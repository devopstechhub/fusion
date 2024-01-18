#!/bin/bash

sudo apt update
sudo apt install apache2 unzip wget -y
#sudo systemctl start apache2
#sudo systemctl status apache2
wget https://www.tooplate.com/zip-templates/2118_chilling_cafe.zip
unzip 2118_chilling_cafe.zip
ls
sudo cp -r 2118_chilling_cafe/* /var/www/html/
sudo systemctl restart apache2
