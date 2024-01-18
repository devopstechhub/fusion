#!/bin/bash
echo "Updating Packages"
sudo apt update
sleep 2
echo "Installing Packages"
sudo apt install apache2 unzip wget -y
ls
sleep 2
echo "Downloading Website files"
wget https://templatemo.com/tm-zip-files-2020/templatemo_520_highway.zip
sleep 2
echo "unzip the web files"
unzip templatemo_520_highway.zip
sleep 2
echo "copying to html dir"
sudo rm -rf /var/www/html/*
sudo cp -r templatemo_520_highway/* /var/www/html/
sudo systemctl restart apache2
