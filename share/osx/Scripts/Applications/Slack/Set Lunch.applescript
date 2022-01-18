-- requires: https://github.com/samknight/slack_applescript

tell script "Slack"
	focus workspace "IBM Watson Health"
	
	-- sometimes need to press return again for it to register
	focus channel "Slackbot"
	delay 0.5
	pressReturn()
	delay 0.25
	set status "Lunch" with icon ":lunch-break2:"
	delay 0.5
	pressReturn()
	-- it says it set the status but then doesn't so add some extra delay here
	delay 2
	set do not disturb for "12 hours"
end tell

