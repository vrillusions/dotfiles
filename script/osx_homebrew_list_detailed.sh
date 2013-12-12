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
VERBOSE=${VERBOSE:-"false"}

while getopts ":hv" opt; do
    case $opt in
    h)
        echo "Usage: $(basename $0) [OPTION] [filename]"
        echo 'Description of command'
        echo
        echo 'Options:'
        echo '  -h  This help message'
        echo '  -v  Be verbose'
        exit 0
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


### Actual script begins here
for pkg in $(brew list); do
    brew info $pkg
    echo
done



# SECONDS is a bash builtin
verbose "Script ran for ${SECONDS} seconds"

exit 0

