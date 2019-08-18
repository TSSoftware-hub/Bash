#!/bin/bash

# Author: Sergey Trukhanov
# Version: 1
# This checks if Box Tools (Box Edit) installed
# Used by the Smart Computer Group with the name BoxEditGroup

plugin=/Library/Application\ Support/Box/Box\ Edit/Box\ Edit.app

if [[ -e "$plugin" ]]; then
    echo "<result>Installed</result>"
else
    echo "<result>Not Installed</result>"
fi

exit 0