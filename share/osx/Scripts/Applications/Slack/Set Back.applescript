-- requires: https://github.com/samknight/slack_applescript

tell script "Slack"
	focus workspace "IBM Watson Health"
	
	-- sometimes need to press return again for it to register
	focus channel "Slackbot"
	delay 0.5
	pressReturn()
	delay 0.25
	clear status
	delay 0.5
	pressReturn()
	delay 0.25
	clear do not disturb
end tell
