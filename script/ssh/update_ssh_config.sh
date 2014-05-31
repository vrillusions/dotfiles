#!/bin/bash -e
# Replaces the bottom part of ~/.ssh/config with any updates
# BUG: if existing config does not have a template section it doesn't complain and just does nothing

if [ ! -d "$HOME/.ssh" ]; then
    # create .ssh directory
    mkdir ~/.ssh
fi
if [ ! -f "$HOME/.ssh/config" ]; then
    # create base ssh config
    # doing this as a bunch of echos instead of heredoc to maintain indentation
    echo "# This is the ssh client user configuration file.  See" >>~/.ssh/config
    echo "# ssh_config(5) for more information.  This file provides defaults for" >>~/.ssh/config
    echo "# users, and the values can be changed on the command line." >>~/.ssh/config
    echo >>~/.ssh/config
    echo "# Configuration data is parsed as follows:" >>~/.ssh/config
    echo "#  1. command line options" >>~/.ssh/config
    echo "#  2. user-specific file" >>~/.ssh/config
    echo "#  3. system-wide file" >>~/.ssh/config
    echo "# Any configuration value is only changed the first time it is set." >>~/.ssh/config
    echo "# Thus, host-specific definitions should be at the beginning of the" >>~/.ssh/config
    echo "# configuration file, and defaults at the end." >>~/.ssh/config
    echo >>~/.ssh/config
    echo "###BEGIN GENERATED CONTENT" >>~/.ssh/config
    echo "###END GENERATED CONTENT" >>~/.ssh/config
fi

# backup existing file, overwriting any existing one
cp -f ~/.ssh/config ~/.ssh/config.bak

# do replacement
# TODO: this doesn't work
#newContent=$(cat ssh_config_template)
#perl -0777 -pe "s/(### BEGIN GENERATED CONTENT\\n).*(\\n### END GENERATED CONTENT)/\$1$newContent\$2/s" ~/.ssh/config

# Havent' checked this one yet
# src: http://stackoverflow.com/a/2700594
#The ba branches to label "a" within the braces associated with
#the test for "BEGIN" and the b branches to the end when "END"
#is found since it's in a set of braces associated with that test.
#It's kind of like if /BEGIN/ then read file; while not /END/ do skip line
#
#sed -ine '/<!-- BEGIN realm -->/ {p; r realm.xml' \
#    -e ':a; n; /<!-- END realm -->/ {p; b}; ba}; p' server.xml

# This may be of help, forget where I got it from
#sed -ne '/^# BEGIN SECTION/,/^# END SECTION/p' filename.xml

# fix permissions
chmod 700 ~/.ssh
chmod 600 ~/.ssh/config

exit 0

