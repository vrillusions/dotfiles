#!/bin/bash
#
# Quick script for patching the local gitconfig with the changes from git.
#
# Environment Variables:
#   FORCE_PATCH: Set to 'true' to not prompt before changing. Default is false
#
# Exit codes:
#    0  No error
#    1  When exiting from help
#

set -e
set -u


if [[ "${1:-}" == '-h' ]]; then
    echo "Patches the local gitconfig with the changes made to" >&2
    echo "gitconfig in version control. Will prompt first unless" >&2
    echo "the environment variable FORCE_PATCH is 'true'" >&2
    exit 1
fi


# -- script constants --
# set script_dir to location this script is running in
readonly script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# -- logging functions --
# Usage: log "What to log"
log () {
    # logger will output to syslog, useful for background tasks
    #logger -s -t "${script_name}" -- "$*"
    # printf is good for scripts run manually when needed
    printf "%b\n" "$(date +"%Y-%m-%dT%H:%M:%S%z") $*"
}

# these are both formated as regexp OR such as:
#   (signingkey|email)
# sections to exclude, don't include the []s
exclude_sections='(maintenance)'
# keys to exclude, note this currently will check for key under any section
exclude_keys='(signingkey|email|repo )'


# This assumes this script is located in script subfolder of repo
cd "${script_dir}/.."

# Turning off exit on error as diff exits non zero if changes are made
set +e
diff -u -B <(grep -vE "^\s*${exclude_keys}" gitconfig \
        | grep -vE "^\[${exclude_sections}\]") \
    <(grep -vE "^\s*${exclude_keys}" gitconfig.versioned \
        | grep -vE "^\[${exclude_sections}\]")
declare -i retcode=$?
set -e

if [[ $retcode -eq 0 ]]; then
    log "no changes are needed"
    exit 0
fi

echo
log "The above changes will be made to your local gitconfig."
if [[ "${FORCE_PATCH:-false}" != 'false' ]]; then
    log "FORCE_PATCH is set, continue"
else
    log "Press ctrl-c if you do not wish to make these changes."
    log "Otherwise press enter to continue"
    echo
    read -n 1 -p "Continue?" __unused
fi

diff -u -B <(grep -vE '^\s*(signingkey|email)' gitconfig) \
    <(grep -vE '^\s*(signingkey|email)' gitconfig.versioned) \
    | patch --no-backup-if-mismatch -p2 gitconfig

log "Change finished successfully"

exit 0

