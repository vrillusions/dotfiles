#!/bin/bash
# src: https://github.com/jpalardy/dotfiles/blob/master/.symlink_it.sh

# upon attempt to use an unset variable, print error and exit
set -u

# note to self: removing since I don't know the purpose of this
#flag="$@"

function relink() {
  # ln -s -h -v $flag $2 $1
  ln -s -n -v $2 $1
}

# Checks if directory exists, if not creates it with minimal permissions.
#
# Note: This intentionally doesn't create parent directories. Those should be
# checked individually so permissions are only changed if we are the ones
# making the directory
#
# Usage: create_dir "/full/path/to/directory"
function create_dir() {
    if [ ! -d "$1" ]; then
        mkdir -m 0700 "$1"
    fi
}

# Get the directory this script is in
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTFILES=${SCRIPT_DIR}

# First create a gitconfig if doesn't exist
if [ ! -f gitconfig ]; then
    echo "creating local .gitconfig"
    cp gitconfig.versioned gitconfig
fi

cd ${HOME}

relink .bash                   $DOTFILES/bash
relink .bashrc                 $DOTFILES/bashrc
relink .bash_profile           $DOTFILES/bash_profile
relink .inputrc                $DOTFILES/inputrc

relink .vim                    $DOTFILES/vim
relink .vimrc                  $DOTFILES/vimrc

relink .screenrc               $DOTFILES/screenrc
relink .lftprc                 $DOTFILES/lftprc
relink .gemrc                  $DOTFILES/gemrc
relink .rvmrc                  $DOTFILES/rvmrc

# Use XDG directories for git. Requires v1.7.12+
if [ -f "${HOME}/.gitconfig" ]; then
    echo "~/.gitconfig already exists, not using new config structure"
else
    create_dir "${HOME}/.config"
    create_dir "${HOME}/.config/git"
    cd .config/git
    relink config                  $DOTFILES/gitconfig
    relink ignore                  $DOTFILES/gitignore
    cd ${HOME}
fi

echo
echo "This only sets up common files. Additional files to setup if you use them"
echo "include procmail, spamassassin, and gvimrc"

exit 0
