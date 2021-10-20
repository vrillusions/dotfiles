-- Open System Preferences.app and click into desired pane/setting. Then, run this script to find out name (Pane ID).

tell application "System Preferences"
	set AppleScript's text item delimiters to {", "}
	set CurrentPane to the id of the current pane
	set CurrentAnchor to name of every anchor of the current pane
	set the clipboard to CurrentPane
	display dialog "Current Pane ID: " & return & CurrentPane & return & return & ¬
		"Current Anchor IDs: " & return & CurrentAnchor & return & ¬
		return & "Pane ID has been copied to the clipboard."
end tell
