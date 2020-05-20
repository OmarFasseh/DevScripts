#!/bin/sh
set -e

cd  Scripts

echo " ~~~~~~~~~~~ Installing Requirements... ~~~~~~~~~~~"
./azure.sh
echo " ~~~~~~~~~~~ Chaning Nginx Configs... ~~~~~~~~~~~"
./nginxFrontEnd.sh
echo " ~~~~~~~~~~~ Creating Directories... ~~~~~~~~~~~"
sudo -u Dev ./directories.sh
echo " ~~~~~~~~~~~ Starting Backend... ~~~~~~~~~~~"
sudo -u Dev ./pm2BackEnd.sh
echo " ~~~~~~~~~~~ Starting Frontend... ~~~~~~~~~~~"
sudo -u Dev ./reloadFront.sh