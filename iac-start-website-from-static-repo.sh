#!/bin/bash

echo "Updating server..."

apt-get update
apt-get upgrade -y

echo "Installing Apache..."
apt-get install apache2 -y

echo "Installing unzip..."
apt-get install unzip -y

echo "Downloading zipped repo and copying to Apache's folder..."

cd /tmp
wget https://github.com/VictorHugoLeme/bc-dio-js/archive/refs/heads/main.zip
unzip main.zip
cd bc-dio-js-main
cp -R * /var/www/html/

"Deployment finished!"
