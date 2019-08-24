#!/bin/bash

# Author: Sergey Trukhanov
# Version: 2 (added hardcoded version check)
# This checks if Java Internet Plug-In installed
# Used by the Smart Computer Group with the same name

plugin=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin

if [[ -e "$plugin" ]]; then
    version=$( grep -A 1 CFBundleVersion /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Enabled.plist | cut -d'>' -f 2 | cut -d'<' -f 1 | tail -n 1)
    if [[ "$version" == "1.8.221.11" ]]; then
    	echo "<result>Current</result>"
    else
    	echo "<result>Old</result>"
    fi    
else
    echo "<result>Not Installed</result>"
fi

exit 0