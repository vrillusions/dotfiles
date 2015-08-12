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
# Only works on Mac and Linux currently
#
# Environment Variables:
#   VERBOSE: Set to 'true' to output more information. Default is 'false'
#
# Exit codes:
#    0  No error
#   96  Problem while parsing options
#  100  Directory didn't exist when trying to clean it
#
# This file is "Unlicensed." See <http://unlicense.org/> for terms.
#


set -e
set -u


# -- script constants --
# set script_dir to location this script is running in
readonly script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
readonly script_name="$(basename $0)"


# -- logging functions --
# Usage: log "What to log"
log () {
    # printf is good for scripts run manually when needed
    printf "%b\n" "$(date +"%Y-%m-%dT%H:%M:%S%z") $*"
}

# Usage: verbose "What to log if VERBOSE is true"
verbose () {
    if [[ "${VERBOSE}" == "true" ]]; then
        log "$*"
    fi
}


# -- option handling --
# Defaults
backup_dir="${HOME}/.vim/backup"
days=180
undo_dir="${HOME}/.vim/undofiles"
VERBOSE=${VERBOSE:-"false"}

while getopts ":hb:d:u:v" opt; do
    case $opt in
    h)
        echo "Usage: ${script_name} [OPTION]"
        echo "       ${script_name} install"
        echo 'Removes old backup, swap, and undo files created by vim. If'
        echo 'called with ``install`` then will add an entry in the crontab for'
        echo 'the current user to run this daily.'
        echo
        echo 'Options:'
        echo '  -h  this help message'
        echo "  -b  full path to backup directory (default: ${backup_dir})"
        echo "  -d  remove temp files older than this many days (default: ${days})"
        echo "  -u  full path to undo directory (default: ${undo_dir})"
        echo '  -v  be verbose'
        exit 0
        ;;
    b)
        backup_dir=${OPTARG}
        ;;
    d)
        days=${OPTARG}
        ;;
    u)
        undo_dir=${OPTARG}
        ;;
    v)
        VERBOSE=true
        ;;
    \?)
        echo "Invalid option: -${OPTARG}" >&2
        exit 96
        ;;
    :)
        echo "Option -${OPTARG} requires an argument" >&2
        exit 96
        ;;
    esac
done
shift `expr ${OPTIND} - 1`
verbose "Additional arguments after options: $*"


# -- additional functions --
# usage: clean_dir "path of directory to clean"
# Requires $xargs_opts and $days to be set before calling this
function clean_dir() {
    local source_dir
    source_dir="$1"

    if [[ -d "${source_dir}" ]]; then
        log "Cleaning ${source_dir}"
        cd "${source_dir}"
        find . -mtime +${days} -not -name ".gitignore" -print0 \
            | xargs ${xargs_opts} rm -f
    else
        log "${source_dir} is not a directory" >&2
        exit 100
    fi
}


# -- actual script begins here --
# check if `install` was specified and update crontab
if [[ "$*" == "install" ]]; then
    log "Installing script to user crontab"
    croncmd="${script_dir}/${script_name} >/dev/null"
    cronjob="@daily ${croncmd}"
    # Need the `|| true` part or else it fails if a blank cron file
    ( crontab -l | grep -v "${croncmd}" || true ; echo "${cronjob}" ) | crontab -
    log "Added '${cronjob}' successfully"
else
    # We use xargs here in case there's a lot of files to delete and rm can't
    # handle a lot of files at once.
    xargs_opts='-n 200 -0'
    if [[ "$(uname -s)" != 'Darwin' ]]; then
        # Not on mac so should have the "-r" option available
        xargs_opts="${xargs_opts} -r"
    fi

    clean_dir "${backup_dir}"
    clean_dir "${undo_dir}"
fi

log "Finished"


verbose "Script ran for ${SECONDS} seconds"

exit 0

