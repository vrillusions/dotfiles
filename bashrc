# ~/.bashrc: executed by bash(1) for non-login shells.
# this includes xterm and variants
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return


# use vim for editor
# ubuntu creates a fake vim bin as a hint to use apt-get, so can't fall back
# to vi automatically. need to override in ~/.bashrc_local if it applies to you.
export EDITOR=vim

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# git and svn prompts
source ~/.bash/git.bash
source ~/.bash/svn.bash

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    PS1='\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[32m\] $(__git_prompt)$(__svn_prompt)\[\033[00m\]\$ '
    ;;
*)
    PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[32m\] $(__git_prompt)$(__svn_prompt)\[\033[00m\]\$ '
    ;;
esac

# Comment in the above and uncomment this below for a color prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

# LSCOLORS variable
# default string: exfxcxdxbxegedabagacad
# Color designations:
#  a black
#  b red
#  c green
#  d brown
#  e blue
#  f magenta
#  g cyan
#  h light grey
#  A bold black, usually shows up as dark grey
#  B bold red
#  C bold green
#  D bold brown, usually shows up as yellow
#  E bold blue
#  F bold magenta
#  G bold cyan
#  H bold light grey; looks like bright white
#  x default foreground or background
# Order of attributes:
#  1. directory
#  2. symbolic link
#  3. socket
#  4. pipe
#  5. executable
#  6. block special
#  7. character special
#  8. executable with setuid bit set
#  9. executable with setgid bit set
#  10. directory writable to others, with sticky bit
#  11. directory writable to others, without sticky bit
# So default is blue foreground and default background for directories, etc
# changing the directory color since it's hard to read on dark backgrounds
export LSCOLORS="gxfxcxdxbxegedabagacad"
# That works on mac but on linux it's LS_COLORS and uses a different format.
# I just used http://geoff.greer.fm/lscolors/ to generate both of these
# commenting out since in ubuntu there are many more options I need to check
#export LS_COLORS="di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
alias irssi='TERM=screen screen -S irssi irssi'
alias screen='TERM=screen screen'

# Spellcheck Function
# Type `sp someword` to spellcheck it
sp () {
    if [ "$(which ispell)" != "" ]; then
        echo "$1" | ispell -a
    elif [ "$(which aspell)" != "" ]; then
        echo "$1" | aspell -a
    else
        echo "Could not find ispell or aspell"
    fi
}

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# --- BEGIN SOME BASH SPECIFIC OPTIONS --- 
# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# append history instead of overwrite
shopt -s histappend
PROMPT_COMMAND='history -a'
# give us lots of history
export HISTSIZE=10000
export HISTFILESIZE=1000000

# fix typos when changing directories
shopt -s cdspell

# set cdpath, makes changing to sibling directories easier
CDPATH='.:..:../..:~'

# this may actually negate the need of setting ls alias earlier
export CLICOLOR=true
# --- END BASH SPECIFIC OPTIONS ---

# include .bashrc_local if it exists
if [ -f ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi
