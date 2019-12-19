# Plugins {{{1
autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit
if [[ -f "$(brew --prefix)/share/zsh/site-functions" ]]; then
    . "$(brew --prefix)/share/zsh/site-functions"
fi

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
zstyle ':vcs_info:git:*' formats '%F{green}(%b %c%u)%f'
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' unstagedstr '*'


# Key bindings {{{1
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# General Options {{{1
setopt AUTO_CD
setopt NO_CASE_GLOB
setopt CORRECT
setopt CORRECT_ALL


# History options {{{1
setopt EXTENDED_HISTORY
setopt APPEND_HISTORY
# according to man page share_history and inc_append_history_time shouldn't both be on
#setopt SHARE_HISTORY
unsetopt SHARE_HISTORY
setopt INC_APPEND_HISTORY_TIME
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
SAVEHIST=10000
HISTSIZE=1000000


# Prompt setting (((1
PROMPT=$'%(?..%F{red}%?\n)%F{green}%n@%m%f:%F{blue}%~%f %# '


# Environment variables {{{1
# Basics {{{2
export EDITOR=vim

# XDG Basedir Setup {{{2
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-${HOME}/.cache}"

# Set application configs (when supported) to XDG locations {{{2
export CCACHE_DIR="${XDG_CACHE_HOME}/ccache"
export HTTPIE_CONFIG_DIR="${XDG_CONFIG_HOME}/httpie"
export LESSHISTFILE="${XDG_CONFIG_HOME}/less/lesshst"
export PACKER_CACHE_DIR="${XDG_CACHE_HOME}/packer"
export PYLINTHOME="${XDG_DATA_HOME}/pylint"
export SCREENRC="${XDG_CONFIG_HOME}/screen/screenrc"
export STEPPATH="${XDG_CONFIG_HOME}/step"
export VAGRANT_HOME="${XDG_DATA_HOME}/vagrant"

# Homebrew settings {{{2
export HOMEBREW_NO_ANALYTICS=1
#export HOMEBREW_GITHUB_API_TOKEN='set in .zshrc_local'
export HOMEBREW_AUTO_UPDATE_SECS=86400
export HOMEBREW_NO_BOTTLE_SOURCE_FALLBACK=1

# pyenv {{{2
export PYENV_ROOT="${HOME}/.local/share/pyenv"
export PATH="${PYENV_ROOT}/bin:${PATH}"

# go {{{2
if [[ -d "${XDG_DATA_HOME}/go" ]]; then
    export GOPATH="${XDG_DATA_HOME}/go"
    export PATH="${GOPATH}/bin:${PATH}"
fi


# Functions {{{1
# update_terminal_tab {{{2
## Doesn't work
#update_terminal_tab() {
#    local tab_title="${USER}@${HOSTNAME}: "
#    # Don't know how to replace the home part with '~'
#    #local pathname="${$(PWD):s,${HOME},\~}"
#    tab_title+="${PWD}"
#    printf '\e]7;%s\a' "${tab_title}"
#}
#chpwd_functions+=('update_terminal_tab')
#update_terminal_tab


# OS X Specific {{{1
if [[ $OSTYPE =~ '^darwin' ]]; then
    export COPYFILE_DISABLE=1

    if [ -d '/Applications/MacVim.app/Contents/bin' ]; then
        export PATH="/Applications/MacVim.app/Contents/bin:${PATH}"
    fi

    alias mvim='mvim --remote-silent'
    alias mvimstart='mvim ~/Documents/AppData/scratchpad.note ~/Documents/AppData/teddy.txt'
    alias vi=vim
fi


# Local settings if found {{{1
if [[ -f "${ZDOTDIR:-$HOME}/.zshrc_local" ]]; then
    source ${ZDOTDIR:-$HOME}/.zshrc_local
fi

# vim: fdm=marker:
