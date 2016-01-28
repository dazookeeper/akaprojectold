echo Installing MongoDB...
sudo mkdir -p /data/db
sudo chown vagrant /data/db
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
apt-get update
echo "Installing vim and git..."
apt-get install -y vim
apt-get install -y git
echo "Installing nodejs..."
apt-get install -y nodejs
#echo "Installing mongodb..."
#apt-get install -y mongodb-10gen

/home/vagrant/heroku.sh

echo "Installing node packages..."
npm install -g express --no-bin-link
npm install -g mongoose --no-bin-link

echo "Cleanup..."
apt-get autoremove
echo "Done!"

