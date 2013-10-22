#!/bin/bash -e

# Usage: log "What to log"
log () {
    printf "%b\n" "$(date +"%Y-%m-%dT%H:%M:%S%z") $*"
}

# Usage: debug "What to log if verbose is true"
debug () {
    if [[ "$VERBOSE" == "true" ]]; then
        log "$*"
    fi
}

# set script_dir to location this script is running in
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

## Option Handling
# Defaults
RUNAS="$USER"

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
log "Additional arguments after options: $*"

## Actual script begins here
log "Sleeping for 2 seconds, use the -v option to see it"
sleep 2
%START%


# SECONDS is a bash builtin
debug "Script ran for ${SECONDS} seconds"

exit 0
