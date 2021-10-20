-- src: http://www.dssw.co.uk/blog/2012-07-22-backing-up-address-book-with-applescript/
set myBackupName to "AddressBook.vcf"

-- Add timestamp and Documents path
set myTimeStamp to (year of (current date)) & (month of (current date) as number) & (day of (current date))
set myBackupPath to the (path to the desktop folder as string) & myTimeStamp & "-" & myBackupName as string

-- Remove any existing back up file created today
tell application "Finder"
	if exists (file myBackupPath) then
		delete file myBackupPath -- move to trash
	end if
end tell

-- To work on Mac OS X 10.4 - 10.7, change "Contacts" to "Address Book".
tell application "Contacts"
	
	-- Create an empty file
	set myBackupFile to (open for access file myBackupPath with write permission)
	
	repeat with per in people
		write (vcard of per as text) to myBackupFile
	end repeat
	
	-- Close the file
	close access myBackupFile
	
end tell
