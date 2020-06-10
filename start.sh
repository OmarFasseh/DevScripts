#!/bin/sh
set -e

cd  Scripts
echo " ~~~~~~~~~~~ Starting Backend... ~~~~~~~~~~~"
sudo -u Dev ./pm2BackEnd.sh
echo " ~~~~~~~~~~~ Starting Frontend... ~~~~~~~~~~~"
sudo -u Dev ./reloadFront.sh