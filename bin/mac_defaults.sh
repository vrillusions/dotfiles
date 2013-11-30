#!/bin/bash -e

echo "These setup various defaults for OS X."
echo "Currently there will be very few confirmations so please read this file"
echo "before continuing."
echo
echo "Press any key to continue or ctrl-c to cancel"
read unused_var
unset unused_var

# --- Finder Tweaks ---
echo "FINDER: show full path in title bar"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

# It's intentional it doesn't have the "-bool" option
echo "FINDER: don't write .DS_Store files to network drives"
defaults write com.apple.desktopservices DSDontWriteNetworkStores TRUE

# this option takes effect immediately
echo "FINDER: display the ~/Library folder"
chflags nohidden ~/Library/

echo "FINDER: restarting finder"
killall Finder

# --- GPGMail 2 ---
echo "GPGMail: disable auto-sign"
defaults write ~/Library/Preferences/org.gpgtools.gpgmail SignNewEmailsByDefault -bool NO

echo
echo "Done"
echo "Some settings will only take effect on reboot of the system."

exit 0

