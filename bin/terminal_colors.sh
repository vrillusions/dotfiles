#!/bin/bash
# Shows the output of various tput options
#
# Not documented here but other options
# tput setab N - sets the background color
# tput bold - bold text

set -e
set -u

# This is the option to reset it
_RESET=$(tput sgr0)

echo "Note: setaf 0 is black, which may not show up in your terminal"
for (( i=0; i<=15; i++ )); do
    echo "$(tput setaf $i) tput setaf $i $(tput rev) reversed $_RESET"
done
