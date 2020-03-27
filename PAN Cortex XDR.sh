#!/bin/bash

# Author: Sergey Trukhanov
# Version: 1
# Description: Install Cortex XDR Antivirus silently

# Check that file exists
fileName=/private/var/tmp/Cortex\ XDR/Cortex\ XDR.pkg

if [[ -e "$fileName" ]]; then
	# Install application
    installer -pkg /private/var/tmp/Cortex\ XDR/Cortex\ XDR.pkg -target / 
    # Cleanup folder
    rm - rf /private/var/tmp/Cortex\ XDR/
    # Exit: Success
    exit 0
else
    # Exit: Failed
    exit 1
fi
# End