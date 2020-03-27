#!/bin/bash

# Author: Sergey Trukhanov
# Version: 1
# Description: add Google Chrome to the managed browsers on G-Suite


if [[ -e /private/var/tmp/CloudManagementEnrollmentToken ]]; then
    if [[ -e /Library/Google/Chrome ]]; then
        cp /private/var/tmp/CloudManagementEnrollmentToken /Library/Google/Chrome/CloudManagementEnrollmentToken
        exit 0
    else
        if [[ -e /Library/Google ]]; then
            cd /Library/Google
            mkdir Chrome
            cp /private/var/tmp/CloudManagementEnrollmentToken /Library/Google/Chrome/CloudManagementEnrollmentToken
            exit 0
        else  
            cd /Library
            mkdir Google
            cd Google
            mkdir Chrome
            cp /private/var/tmp/CloudManagementEnrollmentToken /Library/Google/Chrome/CloudManagementEnrollmentToken
            exit 0
        fi    
    fi
else
    exit 1
fi    