#!/bin/bash

sudo apt-get  install wget apache2 unzip -y

sudo systemctl start apache2
sudo systemctl Enable apache2

mkdir -p /tmp/webfile

sudo cd /tmp/webfile

wget https://www.tooplate.com/zip-templates/2131_wedding_lite.zip
unzip 2131_wedding_lite.zip

sudo cp -r 2131_wedding_lite/* /var/www/html/

sudo systemctl restart apache2


ls /var/www/html/
rm -rf	/tmp/webfile
