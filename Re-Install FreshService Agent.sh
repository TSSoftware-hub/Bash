#!/bin/bash

# Author: Sergey Trukhanov
# Version: 2 
# This re-installs Freshservice agent
# Needs to be used if computer doesn't report for a while
# The DeleteFreshserviceAgent.sh must be used first
# Changed to deliver installer in /private/var/tmp instead of /Applications folder

# reinstall Freshservice agent
if [[ -e /private/var/tmp/FS-Agent ]]; then
    installer -pkg /private/var/tmp/FS-Agent/FS-Agent.pkg -allowUntrusted -target /
    rm -rf /private/var/tmp/FS-Agent/
fi    

exit 0