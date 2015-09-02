#!/bin/bash
#
# Replaces current list of user replacments with the list given in
# replacements.txt file
#
# At some point in the past this was called NSUserReplacementItems but has since
# changed to NSUserDictionaryReplacementItems.
#
# A lot of this taken from http://apple.stackexchange.com/a/110786 once I ran in
# to the issue of text replacements being synced to icloud

set -e
set -u


# -- Script-wide variables --
# set script_dir to location this script is running in
readonly script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# replacements file is in format
#     <replace string> <replace with>
replacements_file="${script_dir}/replacements.txt"


echo "WARNING THE FOLLOWING IS A DESTRUCTIVE PROCESS"
echo "This will wipe all current text replacements and replace with the"
echo "contents of ${replacements_file}."
echo
read -n 1 -p "Press ctrl-c to cancel, any other key to continue" _unused


date=$(date +%s)
declare -i i=0

while read -r replace with; do
    plist+="{on=1;replace=\"$replace\";with=\"$with\";},"
    sql+="INSERT INTO 'ZUSERDICTIONARYENTRY' VALUES($((++i)),1,1,0,0,0,0,$date,NULL,NULL,NULL,NULL,NULL,\"$with\",\"$replace\",NULL);"
done < <(sed 's/"/\\"/g' ${replacements_file})
#done < <(sed 's/\\/\\\\/g;s/"/\\"/g' ${replacements_file})

sqlite3 ~/Library/Dictionaries/CoreDataUbiquitySupport/$USER~*/UserDictionary/local/store/UserDictionary.db \
    "delete from ZUSERDICTIONARYENTRY;$sql"
defaults write -g NSUserDictionaryReplacementItems "(${plist%?})"


echo "Done. Save all your work and restart computer"
echo "You may also need to sign out of iCloud and back in"

exit 0
