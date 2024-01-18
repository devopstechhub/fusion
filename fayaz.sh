#!/bin/bash

PKG=apt
URL=https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip
FILE=2136_kool_form_pack
SRV=apache2
sudo $PKG install apache2 wget unzip -y
wget $URL
unzip $FILE.zip
sudo rm -rf /var/www/html
sudo cp -r $FILE/* /var/www/html/
sudo systemctl restart $SRV

