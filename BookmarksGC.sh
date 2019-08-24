#!/usr/bin/osascript

# Author: Sergey Trukhanov
# Version: 2
# Description: This script adds standard IF bookmarks to the Google Chrome Browser.
# Note: Google Chrome should be running to accomplish this
# Note: This is AppleScript

# Run the Google Chrome
Tell application "Google Chrome" to activate

# Show Bookmarks Bar. This is not allowed on Mojave. 
# Need to add the terminal to Accessibility Settings under Privacy.
# These rows were added in Version 2
tell application "System Events" to keystroke "B" using {shift down, command down}
delay 1

# Add Slack bookmark
set newBookmark to "https://impossiblefoods.slack.com"
set theTitle to "Slack"
set bookmarkFolder to "Bookmarks Bar"

if application "Google Chrome" is running then
    tell application "Google Chrome"
        tell its bookmark folder bookmarkFolder
            set theResult to make new bookmark item with properties {URL:newBookmark}
            set title of theResult to theTitle
        end tell
    end tell
else
    tell application "Google Chrome"
        repeat until (loading of tab 1 of window 1 is false)
            delay 0.5
        end repeat
        tell its bookmark folder bookmarkFolder
            set theResult to make new bookmark item with properties {URL:newBookmark}
            set title of theResult to theTitle
        end tell
        quit
    end tell
end if

# Add Box bookmark
set newBookmark to "https://impossiblefoods.app.box.com/files"
set theTitle to "Box"
set bookmarkFolder to "Bookmarks Bar"

if application "Google Chrome" is running then
    tell application "Google Chrome"
        tell its bookmark folder bookmarkFolder
            set theResult to make new bookmark item with properties {URL:newBookmark}
            set title of theResult to theTitle
        end tell
    end tell
else
    tell application "Google Chrome"
        repeat until (loading of tab 1 of window 1 is false)
            delay 0.5
        end repeat
        tell its bookmark folder bookmarkFolder
            set theResult to make new bookmark item with properties {URL:newBookmark}
            set title of theResult to theTitle
        end tell
        quit
    end tell
end if 

# Add Gmail bookmark
set newBookmark to "http://gmail.com"
set theTitle to "IF Email"
set bookmarkFolder to "Bookmarks Bar"

if application "Google Chrome" is running then
    tell application "Google Chrome"
        tell its bookmark folder bookmarkFolder
            set theResult to make new bookmark item with properties {URL:newBookmark}
            set title of theResult to theTitle
        end tell
    end tell
else
    tell application "Google Chrome"
        repeat until (loading of tab 1 of window 1 is false)
            delay 0.5
        end repeat
        tell its bookmark folder bookmarkFolder
            set theResult to make new bookmark item with properties {URL:newBookmark}
            set title of theResult to theTitle
        end tell
        quit
    end tell
end if 

# Add Zoom bookmark
set newBookmark to "http://zoom.us"
set theTitle to "Zoom"
set bookmarkFolder to "Bookmarks Bar"

if application "Google Chrome" is running then
    tell application "Google Chrome"
        tell its bookmark folder bookmarkFolder
            set theResult to make new bookmark item with properties {URL:newBookmark}
            set title of theResult to theTitle
        end tell
    end tell
else
    tell application "Google Chrome"
        repeat until (loading of tab 1 of window 1 is false)
            delay 0.5
        end repeat
        tell its bookmark folder bookmarkFolder
            set theResult to make new bookmark item with properties {URL:newBookmark}
            set title of theResult to theTitle
        end tell
        quit
    end tell
end if 

# Add Centrify bookmark
set newBookmark to "https://impossiblefoods.my.centrify.com"
set theTitle to "Centrify"
set bookmarkFolder to "Bookmarks Bar"

if application "Google Chrome" is running then
    tell application "Google Chrome"
        tell its bookmark folder bookmarkFolder
            set theResult to make new bookmark item with properties {URL:newBookmark}
            set title of theResult to theTitle
        end tell
    end tell
else
    tell application "Google Chrome"
        repeat until (loading of tab 1 of window 1 is false)
            delay 0.5
        end repeat
        tell its bookmark folder bookmarkFolder
            set theResult to make new bookmark item with properties {URL:newBookmark}
            set title of theResult to theTitle
        end tell
        quit
    end tell
end if 