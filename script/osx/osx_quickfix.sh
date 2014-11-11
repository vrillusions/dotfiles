#!/bin/bash
#
# Contains the options that needs to be reset often. Namely not hiding Library

set -e
set -u

plistbuddy="/usr/libexec/PlistBuddy -c"
usrprefs="${HOME}/Library/Preferences"

cat <<_EOF_
If this is being done after an OS X update, it may have disabled SSD TRIM
support.  This script doesn't set that as it's done via the TRIM enabler
app.

_EOF_

# From here down print the command as it's being run
set -x

# Finder {{{1
#####
# Show ~/Library in finder (this likes to get reset it seems)
chflags nohidden ~/Library

# vim: set fdm=marker:
