#!/bin/bash

# Author Sergey Trukhanov
# Version 1
# Description: Change Online Backblaze Name on Mac laptop which has hostname in a format mba-serialnumber or mbp-serialnumber

# Get the serial number
serialNumber=`/usr/sbin/system_profiler SPHardwareDataType | /usr/bin/awk '/Serial\ Number\ \(system\)/ {print tolower($NF)}'`

# Get the username
userName=$(who | grep console | awk '{print $1}')

# Backblaze settings path
fileName=/Library/Backblaze.bzpkg/bzdata/bzinfo.xml

if [[ -z $userName || "$userName" == "root" || "$userName" == "ifadmin" ]]; then
    echo "This user is not an employee who uses this computer."
    exit 1
else
    if [[ -e $fileName ]]; then
        sed -i '' 's/'${serialNumber}'/'${userName}'/g' $fileName
    else
        echo "Check if Backblaze installed on this machine."
        exit 1
    fi
fi