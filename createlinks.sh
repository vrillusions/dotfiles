#!/bin/bash
# src: https://github.com/jpalardy/dotfiles/blob/master/.symlink_it.sh

set -e
set -u


# Get the directory this script is in
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
dotfiles="${script_dir}"


# Usage: relink "destination" "source"
function relink() {
  ln -s -n -v $2 $1 || true
}

# Checks if directory exists, if not creates it with minimal permissions.
#
# Note: This intentionally doesn't create parent directories. Reason is with the
# -p option it will create the parent directories but with default permissions.
# It will only use the mode specified with -m for the final folder. A possible
# future enhancement is to make this a recursive function.
#
# Usage: create_dir "/full/path/to/directory"
function create_dir() {
    if [ ! -d "$1" ]; then
        mkdir -m 0700 "$1"
    fi
}


cd "${script_dir}"
if [ ! -f gitconfig ]; then
    echo "creating local .gitconfig"
    cp gitconfig.versioned gitconfig
fi

cd "${HOME}"
relink .bash         "${dotfiles}/bash"
relink .bashrc       "${dotfiles}/bashrc"
relink .bash_profile "${dotfiles}/bash_profile"
relink .inputrc      "${dotfiles}/inputrc"

relink .vim          "${dotfiles}/vim"
relink .vimrc        "${dotfiles}/vimrc"

relink .gemrc        "${dotfiles}/gemrc"
relink .rvmrc        "${dotfiles}/rvmrc"


# Create XDG Basedir directories if they don't exist
create_dir "${HOME}/.cache"
create_dir "${HOME}/.config"
create_dir "${HOME}/.local"
create_dir "${HOME}/.local/share"

# Use XDG directories for git. Requires v1.7.12+
if [ -f "${HOME}/.gitconfig" ]; then
    echo "~/.gitconfig already exists, not using new config structure"
else
    create_dir "${HOME}/.config/git"
    cd "${HOME}/.config/git"
    relink config "${dotfiles}/gitconfig"
    relink ignore "${dotfiles}/gitignore"
    cd "${HOME}"
fi

# put lftprc in XDG directory
rm -f "${HOME}/.lftprc"
create_dir "${HOME}/.config/lftp"
cd "${HOME}/.config/lftp"
relink rc "${dotfiles}/lftprc"
cd "${HOME}"

# put screenrc in XDG directory
rm -f "${HOME}/.screenrc"
create_dir "${HOME}/.config/screen"
cd "${HOME}/.config/screen"
relink screenrc "${dotfiles}/screenrc"
cd "${HOME}"

echo
echo "This only sets up common files. Additional files to setup if you use them"
echo "include procmail, spamassassin, and gvimrc"

exit 0
