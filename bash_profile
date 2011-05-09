# ~/.bash_profile: executed by bash(1) for login shells.
# essentially only when logging in via ssh or directly on machine
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/login.defs
#umask 022

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

##
# Your previous /Users/teddy/.bash_profile file was backed up as /Users/teddy/.bash_profile.macports-saved_2010-08-02_at_11:09:59
##

# MacPorts Installer addition on 2010-08-02_at_11:09:59: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

