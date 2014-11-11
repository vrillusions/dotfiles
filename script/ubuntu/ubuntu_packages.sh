#!/bin/bash
#
# Cleanup of ubuntu packages
# very much a work in progress

set -e
set -u

# Remove whoopsie which is an error reporting service but causes to see dns requests to "daisy.ubuntu.com" frequently
sudo aptitude -y purge whoopsie

exit 0
