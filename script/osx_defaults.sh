#!/bin/bash
# vim: set fdm=marker:
#
# Note most of these won't take effect until reboot

set -e

PLISTBUDDY="/usr/libexec/PlistBuddy -c"
USRPREFS="${HOME}/Library/Preferences"

# From here down print the command as it's being run
set -x

# General {{{1
#####
# Disable auto spell correction
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Disable resume
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# Check for updates daily instead of weekly
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Enable full keyboard access so can tab in dialog boxes
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Allow subpixel font rending on non apple monitors
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Among other things this doesn't keep the help window on top
defaults write com.apple.helpviewer DevMode -bool true

# Turn off folder springing (you can hit space to use it when you want)
defaults write NSGlobalDomain com.apple.springing.enabled -bool false

# Display time as "Jan 10 4:18 PM"
defaults write com.apple.menuextra.clock DateFormat -string "MMM d  h:mm a"


# Finder {{{1
#####
# Show ~/Library in finder (this likes to get reset it seems)
chflags nohidden ~/Library

# Disable warning when emptying trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Default to list view
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Enable airdrop on all interfaces
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Don't create .DS_Store files on network
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# Allow selecting text in quicklook
defaults write com.apple.finder QLEnableTextSelection -bool true

# Show status and path bars
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathBar -bool true

# Show full path in title bar
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# New windows default to home folder
defaults write com.apple.finder NewWindowTarget -string "PfHm"

# Default search current folder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Make sidebar icons small (1), medium (2), or large (3)
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Set desktop how I like
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
$PLISTBUDDY "Set :DesktopViewSettings:IconViewSettings:arrangeBy name" ${USRPREFS}/com.apple.finder.plist
$PLISTBUDDY "Set :DesktopViewSettings:IconViewSettings:gridSpacing 45" ${USRPREFS}/com.apple.finder.plist
$PLISTBUDDY "Set :DesktopViewSettings:IconViewSettings:iconSize 48" ${USRPREFS}/com.apple.finder.plist
$PLISTBUDDY "Set :DesktopViewSettings:IconViewSettings:labelOnBottom true" ${USRPREFS}/com.apple.finder.plist
$PLISTBUDDY "Set :DesktopViewSettings:IconViewSettings:showIconPreview true" ${USRPREFS}/com.apple.finder.plist
$PLISTBUDDY "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ${USRPREFS}/com.apple.finder.plist


# Dock {{{1
#####
# Use the "2D" version of dock
# WTF no longer available in mavericks?!
#defaults write com.apple.dock no-glass -bool true
# Since that's not available going to try positioning it on the left
defaults write com.apple.dock orientation -string left

# Set icon size
defaults write com.apple.dock tilesize -int 25

# Bottom left disables screen saver (6)
defaults write com.apple.dock wvous-bl-corner -int 6

# Bottom right starts screen saver (5)
defaults write com.apple.dock wvous-br-corner -int 5


# vim: set fdm=marker:
