# ~/.bash_profile: executed by bash(1) for login shells.
# essentially only when logging in via ssh or directly on machine
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/login.defs
#umask 022

# don't keep telling me when I have new mail
# unset or set to -1 to disable, positive number waits between specified number in seconds
unset MAILCHECK

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi

# load ~/.bash_profile_local if it exists
if [ -f ~/.bash_profile_local ]; then
    . ~/.bash_profile_local
fi
