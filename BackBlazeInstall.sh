#!/bin/bash

# Author Sergey Trukhanov
# Version 1
# Description: Push Backblaze to Mac laptop, assign to existing group, remove files
# If successful, the installer will return BZERROR: 1001. If the installer returns any other error code, it has failed.
# If you see other output error codes, here are potential issues:

# BZERROR:190 - The System Preferences process is running on the computer. Close System Preferences and retry the installation.
# BZERROR:1000 - This is a general error code. One possible reason is that the Backblaze installer doesn't have root permissions and is failing. Please see the install log file for more details.
# BZERROR:1016 - The intended email address already has a Backblaze account, the group ID is incorrect, or the group token is incorrect.


# Install silently, assign computer to account
/Applications/Backblaze\ Installer.app/Contents/MacOS/bzinstall_mate -nogui -signinaccount account@domain.com password_goes_here


# Clean Up
sleep 5
rm -r /Applications/Backblaze\ Installer.app