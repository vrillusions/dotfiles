#!/bin/bash
# vim: set fdm=marker:
#
# Note most of these won't take effect until reboot

set -e

plistbuddy_cmd="/usr/libexec/PlistBuddy -c"
prefs_home="${HOME}/Library/Preferences"

if [[ "$(uname -s)" != "Darwin" ]]; then
    echo "This should only run on Mac OS" >&2
    exit 1
fi

# The parameter expansion is needed since the command fails if called with
# nothing after the -c
if ! command -v "${plistbuddy_cmd%% *}" >/dev/null; then
    echo "Unable to find ${plistbuddy_cmd%% *}" >&2
    exit 1
fi

if ! command -v sw_vers >/dev/null; then
    echo "Unable to find sw_vers" >&2
    exit 1
fi


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
        "${prefs_home}/com.apple.systemuiserver.plist" \
            | grep "${menu_item}" &>/dev/null ; echo $?)
    if [[ $menu_item_exists -eq 1 ]]; then
        echo "Adding ${menu_item} to toolbar"
        $plistbuddy_cmd "Add :menuExtras:0 string ${menu_item}" \
            "${prefs_home}/com.apple.systemuiserver.plist"
    fi
    set -x
}

# Gives 3 item array [0] - major, [1] - minor, [2] - patch
read -r -a osx_version < <(v=sw_vers; echo ${v//\./ })
if [[ ${osx_version[1]} -ge 13 ]]; then
    global_domain='-globalDomain'
else
    global_domain='NSGlobalDomain'
fi


# Close system preferences so settings don't get clobbered
osascript -e 'tell application "System Preferences" to quit'

# From here down print the command as it's being run
set -x


# Fonts {{{1
#####
cp ~/dotfiles/share/fonts/Inconsolata.otf ~/Library/Fonts/


# General {{{1
#####
# Enable dark mode
defaults write ${global_domain} AppleInterfaceStyle -string "dark"

# Enable auto text substitution
defaults write ${global_domain} WebAutomaticTextReplacementEnabled -bool true

# Disable auto spell correction
defaults write ${global_domain} NSAutomaticSpellingCorrectionEnabled -bool false

# Disable auto quote substitution
defaults write ${global_domain} NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto dash substitution (leaving it around for now)
#defaults write ${global_domain} NSAutomaticDashSubstitutionEnabled -bool false

# Disable resume
defaults write ${global_domain} NSQuitAlwaysKeepsWindows -bool false

# Check for updates daily instead of weekly
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Enable full keyboard access so can tab in dialog boxes
defaults write ${global_domain} AppleKeyboardUIMode -int 3

# Allow subpixel font rending on non apple monitors
defaults write ${global_domain} AppleFontSmoothing -int 2

# Among other things this doesn't keep the help window on top
defaults write com.apple.helpviewer DevMode -bool true

# Turn off folder springing (you can hit space to use it when you want)
defaults write ${global_domain} com.apple.springing.enabled -bool false

# Display time as "Jan 10 4:18 PM"
defaults write com.apple.menuextra.clock DateFormat -string "MMM d  h:mm a"

# Expand save dialog by default
defaults write ${global_domain} NSNavPanelExpandedStateForSaveMode -bool true
defaults write ${global_domain} NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print dialog by default
defaults write ${global_domain} NSPrintingExpandedStateForPrint -bool true
defaults write ${global_domain} NSPrintingExpandedStateForPrint2 -bool true

# Don't save to icloud by default
defaults write ${global_domain} NSDocumentSaveNewDocumentsToCloud -bool false

# Turn off shadow when doing screen captures
defaults write com.apple.screencapture disable-shadow -bool true

# Disable “natural” scrolling although this is the first thing I change on new
# system.
# NOTE: If you have scroll reverser installed then leave this to true
defaults write ${global_domain} com.apple.swipescrolldirection -bool false

# Disable press and hold so key repeat is faster
defaults write ${global_domain} ApplePressAndHoldEnabled -bool false

# Set short delay till repeat and then set repeat rate fast
defaults write ${global_domain} InitialKeyRepeat -int 15
defaults write ${global_domain} KeyRepeat -int 2

# Reduce motion (does a more subtle fade instead of stuff moving around)
defaults write com.apple.universalaccess reduceMotion -bool true

# Show all extensions
defaults write ${global_domain} AppleShowAllExtensions -bool true


# Trackpad {{{1
#####
# Turn off trackpad if mouse is connected (aka stop cat from walking across
# laptop and causing random things to open)
# Even though it's a true/false thing plist export has it as an integer
defaults write com.apple.AppleMultitouchTrackpad USBMouseStopsTrackpad -int 1

# Enable dragging by double tap an item and without lifting finger after second
# tap drag the item around.  A delay is included so when at edge of trackpad you
# can lift finger and reposition.
defaults write com.apple.AppleMultitouchTrackpad Dragging -bool true


# Script Editor {{{1
# Add script menu to menu bar
# in mojave this is no longer a menu extra and is handled by... something else
#add_menu_item "/System/Library/CoreServices/Menu Extras/Script Menu.menu"

# Enable script menu
# In mojave it seems that enabling this still doesn't get it to show and you
# must open script editor.  Maybe try a small osascript to click the button
defaults write com.apple.scriptmenu ScriptMenuEnabled -bool true

# Show scripts in /Library/Scripts
defaults write com.apple.scriptmenu ShowLibraryScripts -bool true

# Put app scripts above the system ones
defaults write com.apple.scriptmenu PutAppScriptsFirst -bool true


# Finder {{{1
#####
# Show ~/Library in finder (this likes to get reset it seems)
chflags nohidden ~/Library
# And this seems to not get removed properly either
# silence errors and error message if attribute isn't set
xattr -d com.apple.FinderInfo ~/Library 2>/dev/null || true

# Disable warning when emptying trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Auto empty trash items over 30 days old
defaults write com.apple.finder FXRemoveOldTrashItems -bool true

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

# Hide tags in sidebar but show places
defaults write com.apple.finder SidebarTagsSctionDisclosedState -bool false
defaults write com.apple.finder SidebarPlacesSectionDisclosedState -bool true

# Make sidebar icons small (1), medium (2), or large (3)
defaults write ${global_domain} NSTableViewDefaultSizeMode -int 1

# Set desktop how I like
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
$plistbuddy_cmd "Set :DesktopViewSettings:IconViewSettings:arrangeBy name" "${prefs_home}/com.apple.finder.plist"
$plistbuddy_cmd "Set :DesktopViewSettings:IconViewSettings:gridSpacing 85" "${prefs_home}/com.apple.finder.plist"
$plistbuddy_cmd "Set :DesktopViewSettings:IconViewSettings:iconSize 32" "${prefs_home}/com.apple.finder.plist"
$plistbuddy_cmd "Set :DesktopViewSettings:IconViewSettings:labelOnBottom false" "${prefs_home}/com.apple.finder.plist"
$plistbuddy_cmd "Set :DesktopViewSettings:IconViewSettings:showIconPreview true" "${prefs_home}/com.apple.finder.plist"
$plistbuddy_cmd "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" "${prefs_home}/com.apple.finder.plist"

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

# Don't show recent apps
defaults write com.apple.dock show-recents -bool false

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

# Add an extra space to end of Dock so running apps are separated
defaults write com.apple.dock persistent-apps \
    -array-add '{"tile-type"="spacer-tile";}'


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

# Show Data in the Disk graph (instead of IO)
defaults write com.apple.ActivityMonitor DiskGraphType -int 1

# Show Data in the Network graph (instead of packets)
defaults write com.apple.ActivityMonitor NetworkGraphType -int 1


# Safari {{{1
#####
# Stop the 'try the new safari' popup (wtf apple?)
defaults write com.apple.coreservices.uiagent CSUIHasSafariBeenLaunched -bool true
defaults write com.apple.coreservices.uiagent CSUIRecommendSafariNextNotificationDate -date 2050-01-01T00:00:00Z
defaults write com.apple.coreservices.uiagent CSUILastOSVersionWhereSafariRecommendationWasMade -float 99.99
defaults write com.apple.Safari DefaultBrowserDateOfLastPrompt -date '2050-01-01T00:00:00Z'
defaults write com.apple.Safari DefaultBrowserPromptingState -int 2


# Siri {{{1
#####
# Hide, Disable it, and Don't ask me to enable it
defaults write com.apple.Siri StatusMenuVisible -bool false
defaults write com.apple.Siri UserHasDeclinedEnable -bool true
defaults write com.apple.assistant.support 'Assistant Enabled' -bool false


# Terminal {{{1
#####
# TODO:2015-07-15:teddy: add 'pro modified' profile
# New tabs open with default working directory
defaults write com.apple.Terminal NewTabWorkingDirectoryBehavior -int 1

# New windows open with default working directory
defaults write com.apple.Terminal NewWindowWorkingDirectoryBehavior -int 1


# MacVIM {{{1
#####
# make title bar transparent
defaults write org.vim.MacVim MMTitlebarAppearsTransparent -bool true


# Print notice to restart {{{1
# First turn of command printing now
set +x
echo
echo "Finished. Save any work you have and restart the computer now"
echo

# vim settings {{{1
# vim: set fdm=marker fdl=0:
