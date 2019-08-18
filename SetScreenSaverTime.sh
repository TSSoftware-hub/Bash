#!/bin/sh
#Get current user
user=`ls -l /dev/console | cut -d " " -f 4`
#Set Screensaver to kick in, in number of secconds
sudo -u $user defaults -currentHost write com.apple.screensaver idleTime -int "1800"
sudo -u $user defaults -currentHost read com.apple.screensaver idleTime