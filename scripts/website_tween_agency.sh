#!/bin/bash

sudo yum update
sudo yum install apache2 wget unzip -y
wget https://www.tooplate.com/zip-templates/2128_tween_agency.zip
unzip 2128_tween_agency.zip
sudo cp -r 2128_tween_agency/* /var/www/html/
sudo rm -rf 2128_tween_agency.zip 2128_tween_agency
sudo systemctl restart apache2
