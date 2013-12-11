#!/bin/bash
#
# This will setup the ssh key for current user


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
SSHDIR="${HOME}/.ssh"
SSHKEY_RSA_FILE="${SSHDIR}/id_rsa"
SSHKEY_RSA_BITS=2048

while getopts ":hb:d:f:v" opt; do
    case $opt in
    h)
        echo "Usage: $(basename $0) [OPTION]"
        echo 'Generate SSH key file'
        echo
        echo 'Options:'
        echo '  -h  This help message'
        echo "  -b  Bit length (default: ${SSHKEY_RSA_BITS})"
        echo "  -d  SSH Directory (default: ${SSHDIR})"
        echo "  -f  Key file name (default: ${SSHKEY_RSA_FILE})"
        echo '  -v  Be verbose'
        exit 0
        ;;
    b)
        SSHKEY_RSA_BITS=$OPTARG
        ;;
    d)
        SSHDIR=$OPTARG
        ;;
    f)
        SSHKEY_RSA_FILE=$OPTARG
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
# If verbose option is set then want ssh-keygen to be verbose as well
if [[ "x${VERBOSE}" == "xtrue" ]]; then
    SSH_KEYGEN_OPTS="-v"
else
    # Can add -q here if you want to be quieter
    SSH_KEYGEN_OPTS=""
fi

# Only create/change permissions on ~/.ssh if doesn't exist already
if [[ ! -d "${SSHDIR}" ]]; then
    log "Creating directory ${SSHDIR}"
    mkdir -m 0700 "${SSHDIR}"
fi

# rsa key
if [[ ! -f "${SSHKEY_RSA_FILE}" ]]; then
    ssh-keygen -t rsa -b ${SSHKEY_RSA_BITS} -N "" -C "${USER}@$(hostname -s) (created $(date +%Y-%m-%d))" -f "${SSHKEY_RSA_FILE}" ${SSH_KEYGEN_OPTS}
    chmod 0600 "${SSHKEY_RSA_FILE}" "${SSHKEY_RSA_FILE}.pub"
    echo "Contents of ${SSHKEY_RSA_FILE}.pub:"
    cat "${SSHKEY_RSA_FILE}.pub"
else
    log "${SSHKEY_RSA_FILE} already exists, skipping"
fi

# ecdsa key (commented out since still not widely supported)
# number of bits is either 256, 384, or 521 (that's correct, not 512)
#SSHKEY_ECDSA_FILE="${HOME}/.ssh/id_ecdsa"
#SSHKEY_ECDSA_BITS=384
#if [[ ! -f "${SSHKEY_ECDSA_FILE}" ]]; then
#    ssh-keygen -t ecdsa -b ${SSHKEY_ECDSA_BITS} -N "" -C "${USER}@$(hostname -s) (created $(date +%Y-%m-%d))" -f "${SSHKEY_ECDSA_FILE}" ${SSH_KEYGEN_OPTS}
#    chmod 0600 "${SSHKEY_ECDSA_FILE}" "${SSHKEY_ECDSA_FILE}.pub"
#    echo "Contents of ${SSHKEY_ECDSA_FILE}.pub:"
#    cat "${SSHKEY_ECDSA_FILE}.pub"
#else
#    log "${SSHKEY_ECDSA_FILE} already exists, skipping"
#fi


# SECONDS is a bash builtin
verbose "Script ran for ${SECONDS} seconds"

exit 0

