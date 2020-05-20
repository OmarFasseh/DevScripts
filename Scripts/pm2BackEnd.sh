#!/bin/sh
set -e
cd ~/BackEndScript/Spotify-Backend-Automation/ 
npm install
pm2 start server.js --name Backend --watch --ignore-watch="node_modules"
exit
