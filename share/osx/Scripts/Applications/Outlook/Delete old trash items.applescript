-- Set this to age of messages received
-- note: this is based on the date received, not date deleted
set message_delete_age to 30 * days


set today to (current date)
set delete_count to 0

tell application "Microsoft Outlook"
	set trash_folder to folder "Deleted Items" of default account
	set message_list to messages of trash_folder
	repeat with msg in message_list
		try
			set message_time to time received of msg
			set message_age to today - message_time
			if message_age > message_delete_age then
				-- use this if the source folder isn't already trash folder
				-- permanently delete msg
				delete msg
				set delete_count to delete_count + 1
			end if
		on error err
			log "Error: " & err
		end try
	end repeat
end tell

log "Deleted " & delete_count & " messages"

