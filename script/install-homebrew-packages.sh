#!/bin/bash
# Very basic installer for homebrew. assumes homebrew is already installed
#
# I suppose this could be extended so it will install items given on command
# line but doubt I'll ever bother with it.
#

set -e  # Halt on errors
set -u  # Halt on using undefined var

BREW=$(which brew) || exit 1
BREWIN="${BREW} install"

$BREW update
$BREW upgrade

$BREWIN apg
$BREWIN aspell --with-lang-en
$BREWIN bash-completion
$BREWIN ec2-api-tools
$BREWIN iftop
$BREWIN ipcalc
$BREWIN iperf
$BREWIN lame
$BREWIN lftp
$BREWIN gpg
$BREWIN minicom
$BREWIN multimarkdown
$BREWIN nmap
$BREWIN p7zip
$BREWIN postgresql
$BREWIN proctools
$BREWIN pwgen
$BREWIN watch
$BREWIN wget

# The -s removes even latest downloads
# If this is the first time running this script then this command will do
# nothing. See next command for that.
$BREW cleanup -s
# Per man page, need to run the following to delete cache of installed pkgs
rm -rf $(brew --cache)

echo "All packages installed"
exit 0
