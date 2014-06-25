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
    echo >>~/.ssh/config
    echo "###END GENERATED CONTENT" >>~/.ssh/config
fi

# backup existing file, overwriting any existing one
cp -f ~/.ssh/config ~/.ssh/config.bak


# do replacement
# src: http://superuser.com/a/440057
begin_tag='^### BEGIN GENERATED CONTENT$'
end_tag='^### END GENERATED CONTENT$'
insert_file="./ssh_config_template"
destination="${HOME}/.ssh/config"
# The line break here is significant. White space is not
sed -i -e "/${begin_tag}/,/${end_tag}/{ /${begin_tag}/{p; r ${insert_file}
    }; /${end_tag}/p; d }" ${destination}


# fix permissions
chmod 700 ~/.ssh
chmod 600 ~/.ssh/config

exit 0

