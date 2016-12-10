#!/bin/bash
# vim: set fdm=marker:
#
# Note most of these won't take effect until reboot

set -e

plistbuddy_cmd="/usr/libexec/PlistBuddy -c"
prefs_home="${HOME}/Library/Preferences"


# Usage: add_menu_item "Item to add to menu if not exist"
add_menu_item () {
    set +x
    if [[ -z "$*" ]]; then
        echo "No menu item specified" >&2
        exit 2
    fi
    local menu_item
    local menu_item_exists
    menu_item="$*"
    menu_item_exists=$($plistbuddy_cmd "Print :menuExtras:" \
        ${prefs_home}/com.apple.systemuiserver.plist \
        | grep "${menu_item}" &>/dev/null ; echo $?)
    if [ $menu_item_exists -eq 1 ]; then
        echo "Adding ${menu_item} to toolbar"
        $plistbuddy_cmd "Add :menuExtras:0 string ${menu_item}" \
            ${prefs_home}/com.apple.systemuiserver.plist
    fi
    set -x
}


# From here down print the command as it's being run
set -x


# General {{{1
#####
# Enable auto text substitution
defaults write NSGlobalDomain WebAutomaticTextReplacementEnabled -bool true

# Disable auto spell correction
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Disable auto quote substitution
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto dash substitution (leaving it around for now)
#defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

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

# Expand save dialog by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print dialog by default
defaults write NSGlobalDomain NSPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain NSPrintingExpandedStateForPrint2 -bool true

# Don't save to icloud by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Turn off shadow when doing screen captures
defaults write com.apple.screencapture disable-shadow -bool true

# Disable “natural” scrolling although this is the first thing I change on new
# system.
# NOTE: If you have scroll reverser installed then leave this to true
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Disable press and hold so key repeat is faster
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set short delay till repeat and then set repeat rate fast
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain KeyRepeat -int 2


# Script Editor {{{1
# Add script menu to menu bar
add_menu_item "/System/Library/CoreServices/Menu Extras/Script Menu.menu"

# Show scripts in /Library/Scripts
defaults write com.apple.scriptmenu ShowLibraryScripts -bool true

# Put app scripts above the system ones
defaults write com.apple.scriptmenu PutAppScriptsFirst -bool true


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
defaults write com.apple.finder ShowPathbar -bool true

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
$plistbuddy_cmd "Set :DesktopViewSettings:IconViewSettings:arrangeBy name" ${prefs_home}/com.apple.finder.plist
$plistbuddy_cmd "Set :DesktopViewSettings:IconViewSettings:gridSpacing 85" ${prefs_home}/com.apple.finder.plist
$plistbuddy_cmd "Set :DesktopViewSettings:IconViewSettings:iconSize 32" ${prefs_home}/com.apple.finder.plist
$plistbuddy_cmd "Set :DesktopViewSettings:IconViewSettings:labelOnBottom false" ${prefs_home}/com.apple.finder.plist
$plistbuddy_cmd "Set :DesktopViewSettings:IconViewSettings:showIconPreview true" ${prefs_home}/com.apple.finder.plist
$plistbuddy_cmd "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ${prefs_home}/com.apple.finder.plist

# Turn off confirmation when changing file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Don't open folders in new tabs
defaults write com.apple.finder FinderSpawnTab -bool false


# Dock {{{1
#####
# Use the "2D" version of dock
# WTF no longer available in mavericks?!
#defaults write com.apple.dock no-glass -bool true
# Since that's not available going to try positioning it on the left
defaults write com.apple.dock orientation -string left

# So far only mavericks option I've found. This removes the blur effect. Unsure
# how much better that is though
# Don't think this has any effect in Yosemite
defaults write com.apple.dock hide-mirror -bool true

# Dim apps that are hidden
defaults write com.apple.dock showhidden -bool true

# Set icon size
defaults write com.apple.dock tilesize -int 32

# Bottom left disables screen saver (6)
defaults write com.apple.dock wvous-bl-corner -int 6

# Bottom right starts screen saver (5)
defaults write com.apple.dock wvous-br-corner -int 5

# Don't show dashboard as a space
defaults write com.apple.dock dashboard-in-overlay -bool true

# In fact, just disable dashboard completely
defaults write com.apple.dashboard mcx-disabled -bool true

# Disable rearranging spaces based on use
defaults write com.apple.dock mru-spaces -bool false


# Messages {{{1
#####
# Disable a bunch of things that apparently don't honor the global ignores
defaults write com.apple.messageshelper.MessageController SOInputLineSettings \
    -dict-add "automaticDashSubstitutionEnabled" -bool false
defaults write com.apple.messageshelper.MessageController SOInputLineSettings \
    -dict-add "automaticSpellingCorrectionEnabled" -bool false
defaults write com.apple.messageshelper.MessageController SOInputLineSettings \
    -dict-add "automaticQuoteSubstitutionEnabled" -bool false


# Mail {{{1
#####
# Don't show attachments inline
# In mavericks mail still seems to show attachments inline occasionally, so
# just leave this at default (which is false)
#defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

# Disable send and reply animations in Mail.app
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true

# Enable spell checking
defaults write com.apple.mail SpellCheckingBehavior -string "InlineSpellCheckingEnabled"
# But don't correct it automatically
defaults write com.apple.mail WebAutomaticSpellingCorrectionEnabled -bool false


# Address Book {{{1
#####
# Enable debug menu in address book
defaults write com.apple.addressbook ABShowDebugMenu -bool true


# TextEdit {{{1
#####
# Use plain text mode
defaults write com.apple.TextEdit RichText -int 0

# Use UTF-8 when opening and saving documents
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4


# Activity Monitor {{{1
#####
# Show main window when launching activity monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Show CPU usage in dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes by default
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Default sort is on CPU
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0


# Safari {{{1
#####
# Stop the 'try the new safari' popup (wtf apple?)
defaults write com.apple.coreservices.uiagent CSUIRecommendSafariNextNotificationDate -date 2050-01-01T00:00:00Z
defaults write com.apple.coreservices.uiagent CSUILastOSVersionWhereSafariRecommendationWasMade -float 10.99


# Terminal {{{1
#####
# TODO:2015-07-15:teddy: add 'pro modified' profile
# New tabs open with default working directory
defaults write com.apple.Terminal NewTabWorkingDirectoryBehavior -int 1

# New windows open with default working directory
defaults write com.apple.Terminal NewWindowWorkingDirectoryBehavior -int 1


# Print notice to restart {{{1
# First turn of command printing now
set +x
echo
echo "Finished. Save any work you have and restart the computer now"
echo

# vim settings {{{1
# vim: set fdm=marker:
