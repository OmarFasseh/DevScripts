#!/bin/sh
set -e

cd  Scripts

echo " ~~~~~~~~~~~ Installing Requirements... ~~~~~~~~~~~"
./azure.sh
echo " ~~~~~~~~~~~ Chaning Nginx Configs... ~~~~~~~~~~~"
./nginxFrontEnd.sh
echo " ~~~~~~~~~~~ Creating Directories... ~~~~~~~~~~~"
sudo -u $USER ./directories.sh

#just in case the directories were owned by root
chown -R $USER:$GROUP ~
printf "Done.\nPlease start mongod in byobu\n"