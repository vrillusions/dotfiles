-- requires: https://github.com/samknight/slack_applescript

tell script "Slack"
	focus workspace "IBM Watson Health"
	
	-- sometimes need to press return again for it to register
	focus channel "Slackbot"
	delay 0.5
	pressReturn()
	delay 0.25
	set do not disturb for "12 hours"
	--delay 1
	--pressReturn()
	-- it says it set the status but then doesn't so add some extra delay here
	-- previously was set to 3 but don't think I need that long now
	delay 1
	set status "Lunch" with icon ":lunch-break2:"
end tell

