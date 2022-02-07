#!/bin/bash
#
# Gets a list of all installed packages and their compile options. Requires jq
#
# BUG: doesn't handle caskroom (brew cask).
#


set -e
set -u


if ! command -v jq >/dev/null; then
    echo "Please install jq using 'brew install jq'"
    exit 1
fi

brew info --casks --json=v2 --installed \
    | jq \
        --compact-output \
        --monochrome-output \
        '.casks[]
        | {name: .token,
           version: .version}'


exit 0
