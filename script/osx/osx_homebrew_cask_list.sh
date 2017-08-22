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


# -- tmpfile used since piping `cask info` doesn't work --
readonly script_name="$(basename $0)"
readonly tmpfile="$(mktemp ${script_name}.XXXXXXXXXX)"
trap "rm -f ${tmpfile}" EXIT
echo $tmpfile


for cask in $(brew cask list); do
    brew cask info "${cask}" >"${tmpfile}"
    head -1 "${tmpfile}"
done

exit 0
