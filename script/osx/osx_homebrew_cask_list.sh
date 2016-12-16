#!/bin/bash
#
# Get a list of packages installed via cask and the version
#


set -e
set -u


if ! command -v brew cask >/dev/null; then
    echo "It appears caskroom is not installed"
    exit 1
fi

for cask in $(brew cask list); do
    brew cask info "${cask}" | head -1
done

exit 0