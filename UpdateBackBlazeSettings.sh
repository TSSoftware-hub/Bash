#!/bin/bash

# Author:       Sergey Trukhanov
# Version:      1
# Description:  Updates Backblaze performance settings. 
#               Disables Automatic Threading/Throttle and sets Manual Throttle = 1 Mbps 

fileName=/Library/Backblaze.bzpkg/bzdata/bzinfo.xml

if [[ -e $fileName ]]; then
    sed -i '' 's/net_auto_throttle="true"/net_auto_throttle="false"/g' $fileName
    sed -i '' 's/net_throttle="50"/net_throttle="70"/g'  $fileName
    exit 0
else
    exit 1
fi