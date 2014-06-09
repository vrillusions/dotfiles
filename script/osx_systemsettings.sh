#!/bin/bash
# vim: set fdm=marker:
#
# Typically these command are just run on a new system and just take out
# the parts you need on an existing one

set -e

echo "Enter password for sudo access"
sudo echo

# From here down print the command as it's being run
set -x

# Power management {{{1
#####
# Trying to fix the sleep wake error I keep getting on mid 2012 MBP.
# src: http://apple.stackexchange.com/a/76485
# Value before (and the default it seems) is autopoweroff 1
sudo pmset -a autopoweroff 0

# I also ran this line at some point, which I don't know if it fixed it
# see SSD tweak below
sudo pmset hibernatemode 3


# SSD Tweaks {{{1
#####
# Turn off hibernate mode (saves a bunch of space so long as mac doesn't
# sleep for a week and the battery comepletely dies)
# Commenting this out since battery barely makes it through weekend with it
# disabled
#sudo pmset -a hibernatemode 0
#sudo rm -f /var/vm/sleepimage

# Disable local time machine snapshots
sudo tmutil disablelocal

# Disable motion sensor since there's no spinning disk to save
sudo pmset -a sms 0
