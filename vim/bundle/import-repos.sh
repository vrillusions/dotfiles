#!/bin/bash
#


### Bash options
# exit upon receiving a non-zero exit code
set -e
# enable debuging
#set -x
# upon attempt to use an unset variable, print error and exit
set -u
# fail on first command in pipeline that fails, not last
#set -o pipefail

### Logging functions
# Usage: log "What to log"
log () {
    printf "%b\n" "$(date +"%Y-%m-%dT%H:%M:%S%z") $*"
}
# Usage: verbose "What to log if VERBOSE is true"
verbose () {
    if [[ "$VERBOSE" == "true" ]]; then
        log "$*"
    fi
}


# set script_dir to location this script is running in
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# set this here or can't use after getopts
SCRIPT_NAME="$(basename $0)"
# full command which can be printed out if needed
SCRIPT_CMD="$*"


### Option Handling
# Defaults
RUNAS="$USER"
VERBOSE=${VERBOSE:-"false"}

while getopts ":hvr:" opt; do
    case $opt in
    h)
        echo "Usage: $(basename $0) [OPTION] [filename]"
        echo 'Description of command'
        echo
        echo 'Options:'
        echo '  -h  This help message'
        echo "  -r  Run as specified user (default: $RUNAS)"
        echo '  -v  Be verbose'
        exit 0
        ;;
    r)
        RUNAS=$OPTARG
        ;;
    v)
        VERBOSE=true
        ;;
    \?)
        echo "Invalid option: -$OPTARG" >&2
        exit 1
        ;;
    :)
        echo "Option -$OPTARG requires an argument" >&2
        exit 1
        ;;
    esac
done
shift `expr $OPTIND - 1`
verbose "Additional arguments after options: $*"


# Usage: import_repo "repo url" "name for directory"
import_repo () {
    if [[ $# -ne 2 ]]; then
        log "Usage: export_repo url name"
        return
    fi
    local repo_url
    local repo_name

    repo_url="$1"
    repo_name="$2"

    log "Importing ${repo_name}"
    cd ${SCRIPT_DIR}
    [ -d ${repo_name} ] && rm -rf ${repo_name}
    # In order for git describe to work this has to be a full clone, or at least
    # to a depth that contains a tag.
    git clone -q ${repo_url} ${repo_name}
    cd ${repo_name}
    git describe --always --long --tags >GIT_VERSION.txt
    find . -name ".git*" -print0 | xargs -r -0 -n 200 rm -rf
}


### Actual script begins here
# TODO:2013-11-03:teddy: need a way to send a list of repos to this
# TODO:2013-11-03:teddy: also this will always wipe the destination dir

echo "WARNING: This will erase all the listed projects, including local changes."
read -p "Continue with reload [y/N]? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    import_repo "https://github.com/kien/ctrlp.vim.git" tst-ctrlp
    import_repo "https://github.com/ngn/vim-buffing-wheel.git" tst-vim-buffing-wheel
    import_repo "https://github.com/scrooloose/nerdtree.git" tst-nerdtree
    import_repo "https://github.com/ciaranm/securemodelines.git" tst-securemodelines
    import_repo "https://github.com/altercation/vim-colors-solarized.git" tst-vim-colors-solarized
    import_repo "https://github.com/vrillusions/vim-todotag.git" tst-todotag
    log "Finished"
fi


# SECONDS is a bash builtin
verbose "Script ran for ${SECONDS} seconds"

exit 0

