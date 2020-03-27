#!/bin/bash

# Author: Sergey Trukhanov
# Version: 2 
# This removes Freshservice agent
# Needs to be used if computer doesn't report for a while
# Added removal of the folder with the installer from /private/var/tmp/

# delete Freshservice agent
if [[ -e /Library/Freshservice/Freshservice-Discovery-Agent/FS-Agent ]]; then
    rm -rf /Library/Freshservice/
fi

# delete if there is folder with installer in /Applications/
if [[ -e /Applications/FS-Agent ]]; then
    rm -rf /Applications/FS-Agent/
fi

# delete if there is folder with installer in /private/var/tmp/
if [[ -e /private/var/tmp/FS-Agent ]]; then
    rm -rf /private/var/tmp/FS-Agent/
fi   

exit 0