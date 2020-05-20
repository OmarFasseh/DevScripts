#nagios installation needs more research
#curl https://assets.nagios.com/downloads/nagiosxi/install.sh | sh
#dmesg | grep SCSI

#azure releated
(echo n; echo p; echo 1; echo ; echo ; echo w) | fdisk /dev/sdc
mkfs -t ext4 /dev/sdc1
mkdir /data & mount /dev/sdc1 /data


apt-get update
#sudo apt-get install apache2 -y
#sudo systemctl status apache2 --no-pager

#installing byobu 
apt-get install byobu


#mongo
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -
#apt-get install gnupg #didn't need
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list
apt update && apt upgrade -y
apt-get install -y mongodb-org

#checks
#sudo systemctl status mongodb
#mongod --version

#node 8
#sudo -u Dev curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - #doesn't need sudo
#apt-get install -y nodejs
#check
#node -v

#node.js v13.x
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
apt-get install -y nodejs

#installing nginx
apt update
apt install nginx

#installing yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt update && apt install yarn


#netdata monitoring tool
bash <(curl -Ss https://my-netdata.io/kickstart.sh)  --stable-channel --disable-telemetry

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