# ~/.bashrc: executed by bash(1) for non-login shells.
# this includes xterm and variants
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Use vim for editor {{{1
# ubuntu creates a fake vim bin as a hint to use apt-get, so can't fall back
# to vi automatically. need to override in ~/.bashrc_local if it applies to you.
export EDITOR=vim

# Make less more friendly for non-text input files, see lesspipe(1) {{{1
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

#
# svn prompt (commented out) {{{1
# Don't use svn any more so don't bother decorating prompt
#source ~/.bash/svn.bash

# git prompt {{{1
export GIT_PS1_SHOWDIRTYSTATE=true      # adds a * if there are unstaged changes, + if staged changes
export GIT_PS1_SHOWUNTRACKEDFILES=true  # adds a % if there are untracked files
#source ~/.bash/git-completion.bash
# this only loads the git prompt stuff which is all I really need for here
source ~/.bash/git-prompt.sh

# Prompt colorization {{{1
# some variables to make this stuff readable
RESET=$(tput sgr0)
BR_RED=$(tput setaf 9)
GREEN=$(tput setaf 2)
BR_GREEN=$(tput setaf 10)
BR_BLUE=$(tput setaf 12)
WHITE=$(tput setaf 15)
# always set the prompt_command
PROMPT_COMMAND='RET=$?; if [ $RET != 0 ]; then echo -e "${BR_RED}rc: ${RET}${RESET}"; fi'
# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    TITLE_BAR="\e]0;\u@\h: \w\a"
    ;;
# TODO:2013-11-13:teddy: leaving as a case statement for now
#*)
#    PS1="\[${GREEN}\]\u@\h\[${NORMAL}:${BLUE}\w${GREEN} \$(__git_ps1 \"(%s)\")\$(__svn_prompt)${NORMAL}\$ "
#    ;;
esac

PS1="\[${TITLE_BAR:+$TITLE_BAR}\]"
PS1+="\[${BR_GREEN}\]\u@\h\[${RESET}\]:\[${BR_BLUE}\]\w\[${BR_GREEN}\] "
PS1+="\$(__git_ps1 \"(%s)\")\[${RESET}\]\$ "

# Enable color support of ls and also add handy aliases {{{1
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

# LSCOLORS variable {{{1
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


# Alias definitions {{{1
# TODO:2014-01-27:teddy: move to separate file, like ~/.bash/aliases
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
alias irssi='TERM=screen screen -S irssi irssi'
alias screen='TERM=screen screen'
alias gvim='gvim --remote-tab-silent'
# opens last vim file
alias lvim='vim -c "normal '\''0"'
# note: on osx this won't work (there is no --forest option)
# TODO:2014-01-27:teddy: make an osx equivalent that just calls pstree (homebrew package)
alias psf='ps aux --forest'

alias folders='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Default to gpg v2 if it exists
test $(which gpg2) && alias gpg=gpg2 || true

# Spellcheck function {{{1
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

# Load bash_completion (commented out) {{{1
# MOST COMPUTERS PULL THIS AUTOMATICALLY, ADD TO ~/.bashrc_local IF
# IT'S NOT DONE ON THIS SYSTEM
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#fi

# Bash specific options {{{1
# don't put duplicate lines or lines that begin with a space in the history.
# See bash(1) for more options
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# append history instead of overwrite
shopt -s histappend
PROMPT_COMMAND="$PROMPT_COMMAND ; history -a" 
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

# include .bashrc_local if it exists {{{1
if [ -f ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi

# vim: fdm=marker:
