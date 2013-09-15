#!/bin/bash
# src: https://github.com/jpalardy/dotfiles/blob/master/.symlink_it.sh

# note to self: removing since I don't know the purpose of this
#flag="$@"

function relink() {
  # ln -s -h -v $flag $2 $1
  ln -s -n -v $2 $1
}

DOTFILES=$(pwd)

# First create a gitconfig if doesn't exist
if [ ! -f gitconfig ]; then
    echo "creating local .gitconfig"
    cp gitconfig.versioned gitconfig
fi

cd

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

relink .gitconfig              $DOTFILES/gitconfig
#relink .gitignore              $DOTFILES/gitignore

echo
echo "Note: you need to manually link procmail and spamassassin files on mail server."
echo "Also gvimrc if you need that."

exit 0
