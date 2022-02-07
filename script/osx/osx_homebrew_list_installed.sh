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

brew info --json=v1 --installed \
    | jq \
        --compact-output \
        --monochrome-output \
        '.[]
        | {name: .name,
           precompiled: .installed[0].poured_from_bottle,
           options: .installed[0].used_options,
           version: .installed[0].version,
           installed_as_dependency: .installed[0].installed_as_dependency,
           installed_on_request: .installed[0].installed_on_request}'


exit 0
