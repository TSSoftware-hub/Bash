#!/bin/bash

# Author: Sergey Trukhanov
# Version: 1
# This checks if Java Internet Plug-In installed
# Used by the Smart Computer Group with the same name

plugin=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin

if [[ -e "$plugin" ]]; then
    echo "<result>Installed</result>"
else
    echo "<result>Not Installed</result>"
fi

exit 0