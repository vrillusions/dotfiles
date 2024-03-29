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
#SCRIPT_NAME="$(basename "$0")"
# full command which can be printed out if needed
#SCRIPT_CMD="$*"


### Option Handling
# Defaults
RUNAS="$USER"
VERBOSE=${VERBOSE:-"false"}

while getopts ":hvr:" opt; do
    case $opt in
    h)
        echo "Usage: $(basename "$0") [OPTION] [filename]"
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
shift $(( OPTIND - 1 ))
verbose "Additional arguments after options: $*"


# Usage:
#   import_repo <URL> <NAME> <COMMIT>
#   Where:
#     - URL is the full address to the repo
#     - NAME is the name that the project will be cloned to
#     - COMMIT is the specific commit id. This accepts any value that git
#       checkout would allow (tags, branches, specific commits)
#
# Examples:
#
#     import_repo https://github.com/user/proj.git project 1.0.0
#     import_repo https://github.com/user/proj.git project master
#     import_repo https://github.com/user/proj.git project 34de2983
#
import_repo () {
    if [[ $# -ne 3 ]]; then
        log "Usage: export_repo <URL> <NAME> <COMMIT>"
        return
    fi
    local repo_url
    local repo_name
    local repo_commit

    repo_url="$1"
    repo_name="$2"
    repo_commit="$3"

    log "Importing ${repo_name}"
    cd "${SCRIPT_DIR}"
    [ -d "${repo_name}" ] && rm -rf "${repo_name}"
    # In order for git describe to work this has to be a full clone, or at least
    # to a depth that contains a tag.
    git clone -q "${repo_url}" "${repo_name}"
    cd "${repo_name}"
    git checkout -q "${repo_commit}"
    git submodule -q update --init --recursive
    git describe --always --long --tags >GIT_VERSION.txt
    if [[ "$(uname -s)" == 'Darwin' ]]; then
        XARGS_OPTS=''
    else
        XARGS_OPTS="-r"
    fi
    find . -name ".git*" -print0 | xargs ${XARGS_OPTS} -0 -n 200 rm -rf
}


### Actual script begins here
# TODO:2013-11-03:teddy: need a way to send a list of repos to this
# TODO:2013-11-03:teddy: also this will always wipe the destination dir
# TODO:2014-11-27:teddy: automated way of checking latest commit

echo "WARNING: This will erase the destination folder for each project and will"
echo "reset any local changes made. This shouldn't be an issue as the plugins"
echo "should be configurable from the vimrc file."
read -p "Continue with reload [y/N]? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    # These are listed in alphabetical order of the destination folder
    import_repo "https://github.com/w0rp/ale" ale v2.4.0
    import_repo "https://github.com/pearofducks/ansible-vim.git" ansible-vim 2.0
    #import_repo "https://github.com/moll/vim-bbye.git" bbye v1.0.1
    import_repo "https://github.com/ConradIrwin/vim-bracketed-paste" bracketed-paste c4c639f3c
    #import_repo "https://github.com/ngn/vim-buf.git" vim-buf 3048e7b
    import_repo "https://github.com/kien/ctrlp.vim.git" ctrlp 1.79
    import_repo "https://github.com/editorconfig/editorconfig-vim.git" editorconfig v1.1.1
    #import_repo "https://github.com/thinca/vim-localrc.git" localrc v0.2.0
    import_repo "https://github.com/scrooloose/nerdtree.git" nerdtree 6.10.16
    import_repo "https://github.com/iamcco/markdown-preview.nvim.git" markdown-preview e5bfe9b
    import_repo "https://github.com/weynhamz/vim-plugin-minibufexpl.git" minibufexpl 349a9fb
    import_repo "https://github.com/mustache/vim-mustache-handlebars.git" mustache fcc1401
    import_repo "https://github.com/rodjek/vim-puppet.git" puppet 980147f
    import_repo "https://github.com/vim-python/python-syntax.git" python-syntax c1c5baf
    import_repo "https://github.com/ciaranm/securemodelines.git" securemodelines 9751f29
    import_repo "https://github.com/tmhedberg/SimpylFold.git" SimpylFold aa0371d9
    import_repo "https://github.com/altercation/vim-colors-solarized.git" solarized 528a59f
    import_repo "https://github.com/ervandew/supertab.git" supertab 40fe711
    import_repo "https://github.com/gagoar/StripWhiteSpaces.git" StripWhiteSpaces 85b5753
    import_repo "https://github.com/hashivim/vim-terraform" terraform 9166d42
    import_repo "https://github.com/vrillusions/vim-todotag.git" todotag 0.3.0
    import_repo "https://github.com/vimoutliner/vimoutliner.git" vimoutliner 0.4.0
    import_repo "https://github.com/sukima/xmledit.git" xmledit v1.10.5
    log "Finished"
fi

echo ' - markdown-preview note -'
echo 'you will need to go in to markdown-preview folder and run'
echo
echo '  npm install --production'
echo
echo 'anywhere you wish to use the plugin'

# SECONDS is a bash builtin
verbose "Script ran for ${SECONDS} seconds"

exit 0

