#!/bin/bash

# Author: Sergey Trukhanov
# Version: 2 (added version check, hardcoded for now)
# This checks if Adobe Flash Player PPAPI installed
# Used by the Smart Computer Group with the same name

plugin=/Library/Internet\ Plug-Ins/PepperFlashPlayer/PepperFlashPlayer.plugin

if [[ -e "$plugin" ]]; then
	version=$( grep -A 1 CFBundleShortVersionString /Library/Internet\ Plug-Ins/PepperFlashPlayer/PepperFlashPlayer.plugin/Contents/Info.plist | cut -d'>' -f 2 | cut -d'<' -f 1 | tail -n 1)
    if [[ "$version" == "32.0.0.238" ]]; then
    	echo "<result>Current</result>"
    else
    	echo "<result>Old</result>"
    fi    
else
    echo "<result>Not Installed</result>"
fi

exit 0