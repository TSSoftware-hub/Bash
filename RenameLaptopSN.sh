#!/bin/bash
# Author: Sergey Trukhanov
# Version: 1
# Description: Rename computer based on a model and serial nimber

# Get the computer model
hwModel=`sysctl hw.model | cut -c 10-20`

if [ $hwModel == 'MacBookPro' ]; then
    newHwModel='MBP'
elif [ $hwModel == 'MacBookAir' ]; then
    newHwModel='MBA'
else
    newHwModel='UNK'
fi

# Get the serial number
serialNumber=`/usr/sbin/system_profiler SPHardwareDataType | /usr/bin/awk '/Serial\ Number\ \(system\)/ {print $NF}'`

# Rename computer based on model and serial number
sudo scutil --set ComputerName "${newHwModel}-${serialNumber}"
sudo scutil --set LocalHostName "${newHwModel}-${serialNumber}"
sudo scutil --set HostName "${newHwModel}-${serialNumber}"