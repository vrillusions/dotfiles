# Plugins {{{1
# Auto complete {{{2
autoload -Uz bashcompinit && bashcompinit
# Homebrew part must be set before calling compinit
# At some point the past homebrew was set to /opt/homebrew/bin/brew instead of /usr/local/bin/brew and required
# setting the full path
if type brew &>/dev/null; then
    eval "$(brew shellenv)"
    _brew_prefix="$(brew --prefix)"
    if [[ -d "${_brew_prefix}/share/zsh/site-functions" ]]; then
        FPATH="${_brew_prefix}/share/zsh/site-functions:${FPATH}"
    fi
fi
autoload -Uz compinit && compinit
# I keep swapping between turning this on and off but mention the option here since it took a bit to find the
# correct command to enable this
# Uses a menu style of completion vs needing to mash tab a bunch of times
#zstyle ':completion:*' menu yes select


# Run help {{{2
# Don't complain if alias isn't set which happens when manually sourcing file in same terminal
unalias run-help 2>/dev/null || true
autoload run-help


# Init path variable to be used throughout file {{{1
typeset -U path


# git {{{2
# See: http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#Version-Control-Information
# for configuration
# note this version doesn't support `%` if untracked files
autoload -Uz vcs_info
precmd_vcs_info() {
    vcs_info
}
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{green}(%b %m%c%u)%f'
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' unstagedstr '*'


# Key bindings {{{1
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search


# General Options {{{1
setopt +o NOMATCH  # don't print errors for things like 'curl example.com/?param=1'
setopt AUTO_CD
setopt NO_CASE_GLOB
# Doesn't seem to ever be useful
#setopt CORRECT
setopt MARK_DIRS


# History options {{{1
setopt EXTENDED_HISTORY
setopt APPEND_HISTORY
# according to man page share_history and inc_append_history_time shouldn't both be on
#setopt SHARE_HISTORY
unsetopt SHARE_HISTORY
setopt INC_APPEND_HISTORY_TIME
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
SAVEHIST=1000000
HISTSIZE=10000000


# Path hashing {{{1
# Leaving commented out for now but may want to set these if I get command not found errors
#setopt NO_HASH_DIRS
#setopt NO_HASH_CMDS
# Don't trust hash on command completion.  This may cause performance issues on slower machines
# but those machines also don't have all this dotfiles stuff setup on it
zstyle ":completion:*:commands" rehash 1


# Prompt setting (((1
PROMPT=$'%(?..%F{red}%?\n)%F{green}%n@%m%f:%F{blue}%~%f %# '


# Environment variables {{{1
# Basics {{{2
export EDITOR=vim

# XDG Basedir Setup {{{2
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-${HOME}/.cache}"

# LS Colors {{{2
# See http://geoff.greer.fm/lscolors/ for info on setting this
# This works on Mac, untested on linux
export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagacad"
# This version is used in linux and for autocompletion
export LS_COLORS="di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Set application configs (when supported) to XDG locations {{{2
export AZURE_CONFIG_DIR="${XDG_CONFIG_HOME}/azure"
export CCACHE_DIR="${XDG_CACHE_HOME}/ccache"
export HTTPIE_CONFIG_DIR="${XDG_CONFIG_HOME}/httpie"
export LESSHISTFILE="${XDG_CONFIG_HOME}/less/lesshst"
export PACKER_CACHE_DIR="${XDG_CACHE_HOME}/packer"
export PYLINTHOME="${XDG_DATA_HOME}/pylint"
export SCREENRC="${XDG_CONFIG_HOME}/screen/screenrc"
export STEPPATH="${XDG_CONFIG_HOME}/step"
export VAGRANT_HOME="${XDG_DATA_HOME}/vagrant"
export HELM_HOME="${XDG_CONFIG_HOME}/helm"

# Homebrew settings {{{2
export HOMEBREW_NO_ANALYTICS=1
#export HOMEBREW_GITHUB_API_TOKEN='set in .zshrc_local'
export HOMEBREW_AUTO_UPDATE_SECS=86400
export HOMEBREW_NO_BOTTLE_SOURCE_FALLBACK=1

# Node settings {{{2
export NPM_CONFIG_CACHE="${XDG_CACHE_HOME}/npm-cache"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"

# pyenv {{{2
export PYENV_ROOT="${HOME}/.local/share/pyenv"
path=(${PYENV_ROOT}/bin $path)
if type pyenv &>/dev/null; then
    # this and above two lines should go in a zprofile I guess but haven't
    # had issues keeping everything in zshrc
    # until updated everywhere, hide error message
    eval "$(pyenv init --path)" 2>/dev/null || true
    eval "$(pyenv init -)"
fi
# the command on file system has the dash after pyenv but when running it
# the dash is omitted.
if type pyenv-virtualenv-init &>/dev/null; then
    eval "$(pyenv virtualenv-init -)"
fi

# go {{{2
if [[ -d "${XDG_DATA_HOME}/go" ]]; then
    export GOPATH="${XDG_DATA_HOME}/go"
    path=(${GOPATH}/bin $path)
fi


# Aliases {{{1
# simple aliases {{{2
alias tf=terraform
# fyi <esc>-h will run help on command cursor is on
alias help=run-help
# alias for docker-compose
alias dc=docker-compose

# suffix aliases {{{2
alias -s tfvar=vim

# docker aliases {{{2
if type docker &>/dev/null; then
    alias dcon='docker context'
    alias dconls='docker context ls'
    alias dcons='docker context show'
    alias dconu='docker context use'
fi

# global aliases {{{2
# this is more an example, use a global alias to be able to pipe commands to it
#alias -g gp=grep


# Functions {{{1
# update_terminal_tab {{{2
update_terminal_tab() {
    local tab_tltle
    #tab_title="${USER}@${HOSTNAME}: "
    local pathname="${PWD/${HOME}/~}"
    tab_title="${pathname}"
    #tab_title+="${PWD}"
    printf '\e]2;%s\a' "${tab_title}"
}
DISABLE_AUTO_TITLE="true"
precmd_functions+=('update_terminal_tab')
update_terminal_tab

# Set namespace for kubectl {{{2
kc_set_ns () {
    kubectl config set-context --current --namespace="$@"
}


# OS X Specific {{{1
if [[ $OSTYPE =~ '^darwin' ]]; then
    # this disables copying '._*' files which aren't needed and just an annoyance on other OSes
    export COPYFILE_DISABLE=1
    # disables ~/.zsh_sessions/ files as they're empty anyway because of the append history options
    # NOTE: This won't work.  The below line must be placed in ~/.zprofile in order to be set before
    # mac loads the system zshrc file
    export SHELL_SESSIONS_DISABLE=1

    if [ -d '/Applications/MacVim.app/Contents/bin' ]; then
        path=(/Applications/MacVim.app/Contents/bin $path)
    fi
    # For time being I've only run in to this on mac
    path=(/usr/local/sbin $path)

    # -- use TouchID for sudo --
    # Only issue I've run in to is if the computer does not have it this really confuses things when
    # in recovery mode and using terminal.  Also this may be buggy when you have more than one user
    # as it only goes by if the first user has setup touchid
    declare -i touchid_count
    touchid_count=$(bioutil -c | awk '/fingerprint/ {print $3}' | head -1)
    if [[ $touchid_count > 0 ]]; then
        sudo() {
            unset -f sudo
            if [[ "$(uname)" == 'Darwin' ]] && ! grep 'pam_tid.so' /etc/pam.d/sudo --silent; then
                sudo sed -i -e '1s;^;auth       sufficient     pam_tid.so\n;' /etc/pam.d/sudo
            fi
            sudo "$@"
        }
    fi
    unset _autosuggestions_script
    alias mvim='mvim --remote-silent'
    alias mvimstart='mvim ~/Documents/AppData/scratchpad.note ~/Documents/AppData/teddy.txt'
    alias vi=vim
fi


# Add extra paths {{{1
# Don't use this much but this is the offical user bin directory according to XDG Base Directory
if [[ -d "${HOME}/.local/bin" ]]; then
    path=(${HOME}/.local/bin $path)
fi
if [[ -d "${HOME}/bin" ]]; then
    path=(${HOME}/bin $path)
fi
if [[ -d "${HOME}/dotfiles/bin" ]]; then
    path=(${HOME}/dotfiles/bin $path)
fi


# Export updated path {{{1
export PATH


# zsh plugins {{{1
# fzf (optional dependency of zoxide) {{{2
[ -r "${XDG_CONFIG_HOME}/fzf/fzf.zsh" ] && source "${XDG_CONFIG_HOME}/fzf/fzf.zsh"

# zoxide {{{2
if type zoxide &>/dev/null; then
    eval "$(zoxide init zsh)"
fi

# zsh-autosuggestions (requires brew) {{{2
if type brew &>/dev/null; then
    # brew install zsh-autosuggestions
    _autosuggestions_script="${_brew_prefix}/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
    if [[ -r "$_autosuggestions_script" ]]; then
        source ${_autosuggestions_script}
    fi
    unset _autosuggestions_script

    # Syntax highlighting {{{2
    _syntax_highlighting_script="${_brew_prefix}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
    if [[ -r "${_syntax_highlighting_script}" ]]; then
        source ${_syntax_highlighting_script}
    fi
    unset _syntax_highlighting_script
    unset _brew_prefix
fi



# Local settings if found {{{1
if [[ -r "${ZDOTDIR:-$HOME}/.zshrc_local" ]]; then
    source ${ZDOTDIR:-$HOME}/.zshrc_local
fi

# vim: fdm=marker:
