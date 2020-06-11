#!/bin/sh
set -e

#azure releated
#(echo n; echo p; echo 1; echo ; echo ; echo w) | fdisk /dev/sdc
#mkfs -t ext4 /dev/sdc1
#mkdir /data & mount /dev/sdc1 /data


apt-get update

#installing byobu 
apt-get install byobu


#mongo
echo "Installing Mongo"
sudo apt-get install gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list
apt-get update 
apt-get install -y mongodb-org

#sudo systemctl start mongod -> replaced by starting mongod in byobu
#service mongod start
#checks

#systemctl status mongodb
mongod --version


#node.js v14.x
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
node -v

#installing nginx
apt update
yes | apt install nginx

#installing yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt update && apt install yarn

#chown -R $USER:$GROUP ~/.npm
#chown -R $USER:$GROUP ~/.config

#install pm2
npm install pm2@latest -g


#extras

#netdata monitoring tool
#sudo -u $USER bash <(curl -Ss https://my-netdata.io/kickstart.sh)  --stable-channel --disable-telemetry

#serve
#sudo snap install serve

#cert bot for https
#sudo apt-get update
#sudo apt-get install software-properties-common
#sudo add-apt-repository universe
#sudo add-apt-repository ppa:certbot/certbot
#sudo apt-get update
#sudo apt-get install certbot python-certbot-nginx
#sudo certbot --nginx
