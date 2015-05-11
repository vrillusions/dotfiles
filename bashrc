# ~/.bashrc: executed by bash(1) for non-login shells.
# this includes xterm and variants
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# include .bashrc_local_pre at top of file if it exists {{{1
# This is for setting environment variables and such that need to be set early
if [ -f ~/.bashrc_local_pre ]; then
    . ~/.bashrc_local_pre
fi

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
_RESET=$(tput sgr0)
_BR_RED=$(tput setaf 9)
_GREEN=$(tput setaf 2)
_BR_GREEN=$(tput setaf 10)
_BR_BLUE=$(tput setaf 12)
_WHITE=$(tput setaf 15)
# Define this in ~/.bashrc_local_pre to change the color
PROMPT_HOST_COLOR=${PROMPT_HOST_COLOR:-$_BR_GREEN}
# always set the prompt_command
PROMPT_COMMAND='RET=$?; if [ $RET != 0 ]; then echo -e "${_BR_RED}rc: ${RET}${_RESET}"; fi'
# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*|cygwin*)
    _TITLE_BAR="\e]0;\u@\h: \w\a"
    ;;
# TODO:2013-11-13:teddy: leaving as a case statement for now
#*)
#    PS1="\[${GREEN}\]\u@\h\[${NORMAL}:${BLUE}\w${GREEN} \$(__git_ps1 \"(%s)\")\$(__svn_prompt)${NORMAL}\$ "
#    ;;
esac

PS1="\[${_TITLE_BAR:+$_TITLE_BAR}\]"
PS1+="\[${PROMPT_HOST_COLOR}\]\u@\h\[${_RESET}\]:"
PS1+="\[${_BR_BLUE}\]\w "
PS1+="\[${_BR_GREEN}\]\$(__git_ps1 \"(%s)\")"
PS1+="\[${_RESET}\]\$ "

# PROMPT_HOST_COLOR is no longer needed and mess up the output of `env`
unset PROMPT_HOST_COLOR

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

# XDG Basedir Setup {{{1
# To override these add them to ~/.bashrc_local_pre
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-${HOME}/.cache}"

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
test "$(which gpg2)" && alias gpg=gpg2 || true

# Commenting this out as the bloomfilter stuff doesn't seem to work
# Instead use the -r wordlist option which is slower but seems to work
## Set some defaults for apg if bloomfilter is generated
#if [[ -f ${XDG_DATA_HOME}/apg/bloomfilter ]] \
#        && command -v apg >/dev/null 2>&1; then
#    alias apg='apg -b "${XDG_DATA_HOME}/apg/bloomfilter" -E O1IB'
#fi
if command -v apg >/dev/null 2>&1; then
    alias apg='apg -E O1IB'
fi

# Spellcheck function {{{1
# Type `sp someword` to spellcheck it
sp () {
    if [ "$(which ispell)" != "" ]; then
        echo "$*" | ispell -a
    elif [ "$(which aspell)" != "" ]; then
        echo "$*" | aspell -a
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

# Set application configs (when supported) to XDG locations {{{1
export CCACHE_DIR="${XDG_CACHE_HOME}/ccache"
export HTTPIE_CONFIG_DIR="${XDG_CONFIG_HOME}/httpie"
export LESSHISTFILE="${XDG_CONFIG_HOME}/less/lesshst"
export PYLINTHOME="${XDG_DATA_HOME}/pylint"
export SCREENRC="${XDG_CONFIG_HOME}/screen/screenrc"
export VAGRANT_HOME="${XDG_DATA_HOME}/vagrant"
export PACKER_CACHE_DIR="${XDG_CACHE_HOME}/packer"

# Bash specific options {{{1
# don't put duplicate lines or lines that begin with a space in the history.
# See bash(1) for more options
export HISTCONTROL=ignoreboth

# Ignore `ls`.
export HISTIGNORE="ls"

# append history instead of overwrite
shopt -s histappend
PROMPT_COMMAND="$PROMPT_COMMAND ; history -a"

# give us lots of history
export HISTSIZE=10000
export HISTFILESIZE=1000000

# set the timeformat when printing history. also tells bash to keep track of
# timestamps when it's writing to history
export HISTTIMEFORMAT="%Y:%m:%d %H:%M:%S  "

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

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
