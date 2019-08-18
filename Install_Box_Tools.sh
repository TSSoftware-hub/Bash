# Author: Sergey Trukhanov
# Version: 1
# Install the Box Tools (Edit)

currentUser=`/bin/ls -la /dev/console | /usr/bin/awk '{print$3}'`
sudo -u ${currentUser} installer -pkg /BoxToolsInstaller.pkg -target $HOME