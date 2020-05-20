#!/bin/sh

cd ~/FrontEndScript/SWE-Frontend-automation/
git pull
npx npm-force-resolutions 
npm install
yarn build