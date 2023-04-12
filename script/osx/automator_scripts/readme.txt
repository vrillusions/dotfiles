## Installing automator scripts

I didn't test extensively but it looks like folder action automator scripts
won't just work even if you open the workflow and it "installs" it and places
it in the right location.  Once it's in the right spot it should also register
it as a folder action.  To actually get it to work go to your home folder in
finder, right click on Desktop, then choose Services > Folder Actions Setup.
From there you can add the script that just got installed and make sure folder
actions are enabled.

Also when you do choose to install the workflow it will move it from this
folder.  If you forgot to make a copy just do a git checkout to get it back.
The file is copied to ~/Library/Workflows/Applications/Folder Actions/ and so
can retrieve the file from there
