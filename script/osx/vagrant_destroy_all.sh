#!/bin/bash
#
# Very quick way of removing all the vagrant boxes
#


set -e
set -u


for vm in $(vagrant global-status | grep virtualbox | awk '{print $1}'); do
    vagrant destroy --force $vm
done


exit 0
