#!/bin/bash

# Author Sergey Trukhanov
# Version 1
# Description: Install Java 8 Update 221

# Install silently
/Applications/Java\ 8\ Update\ 221.app/Contents/MacOS/MacJREInstaller -install -nogui

# Clean Up
sleep 5
rm -r /Applications/Java\ 8\ Update\ 221.app