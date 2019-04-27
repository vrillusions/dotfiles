# ~/.bash_profile: executed by bash(1) for login shells.
# essentially only when logging in via ssh or directly on machine
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.
# shellcheck disable=SC1090

# the default umask is set in /etc/login.defs
#umask 022

# don't keep telling me when I have new mail
# unset or set to -1 to disable, positive number waits between specified number in seconds
unset MAILCHECK

# include .bashrc if it exists
if [ -f "${HOME}/.bashrc" ]; then
    source "${HOME}/.bashrc"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ] ; then
    export PATH="${HOME}/bin:${PATH}"
fi
# same for dotfiles/bin
if [ -d "${HOME}/dotfiles/bin" ] ; then
    export PATH="${HOME}/dotfiles/bin:${PATH}"
fi

# load ~/.bash_profile_local if it exists
if [ -f "${HOME}/.bash_profile_local" ]; then
    source "${HOME}/.bash_profile_local"
fi

