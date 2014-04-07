#!/bin/bash
#
# Enter description here
#
# Environment Variables:
#     VERBOSE: Set to 'true' to output more information. Default is 'false'
#


### Bash options
set -e
set -u


### Logging functions
# Usage: log "What to log"
log () {
    printf "%b\n" "$(date +"%Y-%m-%dT%H:%M:%S%z") $*"
}
# Usage: verbose "What to log if VERBOSE is true"
verbose () {
    if [[ "${VERBOSE}" == "true" ]]; then
        log "$*"
    fi
}


# set script_dir to location this script is running in
readonly script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# set this here or can't use after getopts
#script_name="$(basename $0)"
# full command which can be printed out if needed
#script_cmd="$*"


### Option Handling
# Defaults
runas="${USER}"
VERBOSE=${VERBOSE:-"false"}

while getopts ":hvr:" opt; do
    case ${opt} in
    h)
        echo "Usage: $(basename $0) [OPTION] [filename]"
        echo 'Description of command'
        echo
        echo 'Options:'
        echo '  -h  this help message'
        echo "  -r  run as specified user (default: ${runas})"
        echo '  -v  be verbose'
        exit 0
        ;;
    r)
        runas=${OPTARG}
        ;;
    v)
        VERBOSE=true
        ;;
    \?)
        echo "Invalid option: -${OPTARG}" >&2
        exit 1
        ;;
    :)
        echo "Option -${OPTARG} requires an argument" >&2
        exit 1
        ;;
    esac
done
shift $(expr ${OPTIND} - 1)
verbose "Additional arguments after options: $*"


### Actual script begins here
log "Starting ${script_name}"
%START%


# SECONDS is a bash builtin
verbose "Script ran for ${SECONDS} seconds"

exit 0
