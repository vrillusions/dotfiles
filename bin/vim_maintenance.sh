#!/bin/bash
#
# Remove old temporary files created by vim.
#
# My vim config creates a lot of temporary files that don't automatically.
# Periodically those old files should be removed. Using the defaults this will
# remove any files that haven't been modified in over 180 days. This is a very
# conservative number as generally a backup is going to be needed within a day
# or less. If disk space is a concern the number can always be lowered.
#
# Usage:
# Add the following to your crontab:
#   @daily ~/bin/vim_maintenance.sh >/dev/null
#
# TODO:
# - Check for swap files older than a day and print an error since those
#   should clean up after themselves.
#
# This file is "Unlicensed." See <http://unlicense.org/> for terms.
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
BACKUP_DIR="${HOME}/.vim/backup"
DAYS=180
UNDO_DIR="${HOME}/.vim/undofiles"
VERBOSE=${VERBOSE:-"false"}

while getopts ":hb:d:u:v" opt; do
    case $opt in
    h)
        echo "Usage: $(basename $0) [OPTION]"
        echo 'Removes old backup, swap, and undo files created by vim.'
        echo
        echo 'Options:'
        echo '  -h  This help message'
        echo "  -b  Full path to backup directory (default: $BACKUP_DIR)"
        echo "  -d  Remove temp files older than this many days (default: $DAYS)"
        echo "  -u  Full path to undo directory (default: $UNDO_DIR)"
        echo '  -v  Be verbose'
        exit 0
        ;;
    b)
        BACKUP_DIR=$OPTARG
        ;;
    d)
        DAYS=$OPTARG
        ;;
    u)
        UNDO_DIR=$OPTARG
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
# We use xargs here in case there's a lot of files to delete and rm can't
# handle a lot of files at once.
log "Cleaning ${BACKUP_DIR}"
cd "${BACKUP_DIR}"
find . -mtime +${DAYS} -not -name ".gitignore" -print0 \
    | xargs -n 200 -r -0 rm -f

log "Cleaning ${UNDO_DIR}"
cd "${UNDO_DIR}"
find . -mtime +${DAYS} -not -name ".gitignore" -print0 \
    | xargs -n 200 -r -0 rm -f

log "Finished"


# SECONDS is a bash builtin
verbose "Script ran for ${SECONDS} seconds"

exit 0

