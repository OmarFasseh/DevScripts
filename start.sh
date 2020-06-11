#!/bin/sh
set -e

cd  Scripts
echo " ~~~~~~~~~~~ Starting Backend... ~~~~~~~~~~~"
./pm2BackEnd.sh || { printf "Starting Backend failed!\nMake sure to run init.sh as root first\n" ; exit 1; }
echo " ~~~~~~~~~~~ Starting Frontend... ~~~~~~~~~~~"
./reloadFront.sh || { echo "Starting Frontend failed!" ; }
