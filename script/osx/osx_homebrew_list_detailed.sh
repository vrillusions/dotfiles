#!/bin/bash
#
# Prints out all available information on installed homebrew packages. Does not
# include packages installed via cask


set -e
set -u


# -- old version of script (not as useful IMO but kept around) --
#for pkg in $(brew list); do
#    brew info $pkg
#    echo
#done


# -- new version of script --
brew info --json=v1 --installed | python -m json.tool

exit 0
