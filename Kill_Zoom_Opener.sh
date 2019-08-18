#!/bin/sh

# check that script is run as root user
#if [ "$EUID" -ne 0 ]
#then
#    >&2 /bin/echo $'\nThis script must be run as the root user!\n'
#    exit
#fi

#sudo defaults write /Library/Preferences/us.zoom.config.plist ZDisableVideo 1
pkill "ZoomOpener"; rm -rf ~/.zoomus; touch ~/.zoomus && chmod 000 ~/.zoomus;
