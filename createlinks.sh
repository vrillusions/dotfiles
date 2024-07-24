#!/bin/bash
# src: https://github.com/jpalardy/dotfiles/blob/master/.symlink_it.sh

set -e
set -u


# Get the directory this script is in
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
dotfiles="${script_dir}"


# Set XDG values if not set already
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"


# Usage: relink "destination" "source"
function relink() {
  ln -s -n -v "$2" "$1" || true
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
relink .wgetrc      "${dotfiles}/wgetrc"

relink .zshrc        "${dotfiles}/zshrc"

relink .vim          "${dotfiles}/vim"
relink .vimrc        "${dotfiles}/vimrc"

relink .gemrc        "${dotfiles}/gemrc"
relink .rvmrc        "${dotfiles}/rvmrc"


# Create XDG Basedir directories if they don't exist
create_dir "${XDG_CACHE_HOME}"
create_dir "${XDG_CONFIG_HOME}"
create_dir "${HOME}/.local"
create_dir "${XDG_DATA_HOME}"

# Use XDG directories for git. Requires v1.7.12+
if [ -f "${HOME}/.gitconfig" ]; then
    echo "${HOME}/.gitconfig already exists, not using new config structure"
else
    create_dir "${XDG_CONFIG_HOME}/git"
    cd "${XDG_CONFIG_HOME}/git"
    relink config "${dotfiles}/gitconfig"
    relink ignore "${dotfiles}/gitignore"
fi

# put lftprc in XDG directory
rm -f "${HOME}/.lftprc"
create_dir "${XDG_CONFIG_HOME}/lftp"
cd "${XDG_CONFIG_HOME}/lftp" && relink rc "${dotfiles}/lftprc"

# put screenrc in XDG directory
rm -f "${HOME}/.screenrc"
create_dir "${XDG_CONFIG_HOME}/screen"
cd "${XDG_CONFIG_HOME}/screen" && relink screenrc "${dotfiles}/screenrc"

# put yamllint config in XDG directory
create_dir "${XDG_CONFIG_HOME}/yamllint"
cd "${XDG_CONFIG_HOME}/yamllint" && relink config "${dotfiles}/yamllint-config.yml"

# put yt-dlp config in XDG directory
create_dir "${XDG_CONFIG_HOME}/yt-dlp"
cd "${XDG_CONFIG_HOME}/yt-dlp" && relink config "${dotfiles}/yt-dlp.conf"

# Comment out since bloomfilter doesn't seem to work. Use -r wordlist instead
## see if we need to generate bloom filter for apg
#if [[ ! -f ${XDG_DATA_HOME}/apg/bloomfilter ]] \
#        && command -v apgbfm 1>/dev/null 2>&1; then
#    if [[ -f /usr/share/dict/words ]]; then
#        echo "Generating bloomfilter for apg. This may take a few seconds..."
#        create_dir "${XDG_DATA_HOME}/apg"
#        apgbfm -q -s -d /usr/share/dict/words -f ${XDG_DATA_HOME}/bloomfilter
#    else
#        echo "Unable to generate bloomfilter, /usr/share/dict/words doesn't exist."
#        echo "Install a dictionary with:"
#        echo
#        echo "    sudo apt-get install ispell"
#    fi
#else
#    echo "Apg is not installed. It's recommended to install the apg package for"
#    echo "use when generating passwords"
#fi


echo
echo "This only sets up common files. Additional files to setup if you use them"
echo "include procmail, spamassassin, and gvimrc"

exit 0
