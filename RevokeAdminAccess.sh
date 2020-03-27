#!/bin/bash

# Author Sergey Trukhanov
# Version 1
# Description: Remove end user from admin group

# Get the username
userName=$(who | grep console | awk '{print $1}')

if [[ -z $userName || "$userName" == "root" || "$userName" == "ifadmin" || "$userName" == "jamfadmin" ]]; then
    echo "This user is not an employee who uses this computer."
    exit 1
else
    dseditgroup -o edit -d $userName -t user admin
    echo "The user $userName was removed from the admin group."
    exit 0
fi