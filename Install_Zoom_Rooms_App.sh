#!/bin/bash

# Author: Sergey Trukhanov
# Version: 1
# Description: Install Zoom Rooms.app silently
# Note: Jamf calls this app as ZoomPresence.app, but in Applications folder it will look like Zoom Rooms.app
# Package in use: ZoomRooms_4.4.1.dmg

# Check that file exists
fileName=/Applications/ZoomRooms_4.4.1.pkg

if [[ -e "$fileName" ]]; then
	# Install application
    installer -pkg /Applications/ZoomRooms_4.4.1.pkg -target / 
    # Cleanup Applications folder
    rm /Applications/ZoomRooms_4.4.1.pkg
    # Exit: Success
    exit 0
else
    # Exit: Failed
    exit 1
fi
# End