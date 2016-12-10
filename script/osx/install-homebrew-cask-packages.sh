#!/bin/bash
# Very basic installer for homebrew cask. assumes homebrew is already installed
#
# Nowadays cask has been integrated in to homebrew so don't need to install it
#
# I suppose this could be extended so it will install items given on command
# line but doubt I'll ever bother with it.
#

set -e  # Halt on errors
set -u  # Halt on using undefined var

BREW=$(which brew) || exit 1
CASKIN="${BREW} cask install"

$BREW cask update

$CASKIN 0xed
$CASKIN appcleaner
#$CASKIN audacity # N/A
$CASKIN bitbar
$CASKIN charlessoft-timetracker
$CASKIN cyberduck
$CASKIN dash
$CASKIN deluge
$CASKIN gimp
$CASKIN istumbler
$CASKIN libreoffice
##$CASKIN logitech-control-center  # always have issues with this
$CASKIN logitech-unifying
$CASKIN onyx
$CASKIN qlcolorcode
$CASKIN qlimagesize
$CASKIN qlmarkdown
$CASKIN qlstephen
$CASKIN sequel-pro
$CASKIN smcfancontrol
$CASKIN sqlitebrowser
$CASKIN torbrowser
#$CASKIN wireshark  # gave install error
$CASKIN wkhtmltopdf
$CASKIN xca
$CASKIN yed


# The -s removes even latest downloads
# If this is the first time running this script then this command will do
# nothing. See next command for that.
$BREW cask cleanup
# Per man page, need to run the following to delete cache of installed pkgs
rm -rf $(brew --cache)

echo "All packages installed"
exit 0
