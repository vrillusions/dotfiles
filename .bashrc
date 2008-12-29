# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# vr: ~/.bash_profile is used for interactive shells
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# all this moved to ~/.bash_profile

# include .bashrc_local if it exists
if [ -f ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi
