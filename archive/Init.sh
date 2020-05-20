#Creating a new branch
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
#npm install @repo
sudo npm install -g npm
sudo npm install -g bower
#Gulp
sudo npm install gulp-cli -g
sudo npm install gulp -D
npx -p touch nodetouch gulpfile.js
gulp --help

sudo mkdir -p /data/db
#Mongo
#if gnupg isnt there -> sudo apt-get install gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
#for ubuntu bionic
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.listgnupgecho "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.listgnupgecho "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.listgnupgecho "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.listgnupg
#for ubuntu xenial
#echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt-get update #reloads package DB
sudo apt-get install -y mongodb-org

#specific ubuntu package and hold updates
#sudo apt-get install -y mongodb-org=4.2.3 mongodb-org-server=4.2.3 mongodb-org-shell=4.2.3 mongodb-org-mongos=4.2.3 mongodb-org-tools=4.2.3
#echo "mongodb-org hold" | sudo dpkg --set-selections
#echo "mongodb-org-server hold" | sudo dpkg --set-selections
#echo "mongodb-org-shell hold" | sudo dpkg --set-selections
#echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
#echo "mongodb-org-tools hold" | sudo dpkg --set-selections

#run mongo 
sudo systemctl start mongod
#if error: sudo systemctl daemon-reload

#auto run 
#sudo systemctl enable mongod

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn



