#!/bin/bash
PKG=apt
URL=https://www.tooplate.com/zip-templates/2125_artxibition.zip
FILE=2125_artxibition

echo "Updating Packages"
sudo $PKG update
sleep 2
echo "Installing Packages"
sudo $PKG install apache2 unzip wget -y
ls
sleep 2
echo "Downloading Website files"
wget $URL
sleep 2
echo "unzip the web files"
unzip $FILE.zip
sleep 2
echo "copying to html dir"
sudo rm -rf /var/www/html/*
sudo cp -r $FILE/* /var/www/html/
sudo systemctl restart apache2
