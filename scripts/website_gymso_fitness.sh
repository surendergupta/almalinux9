#!/bin/bash

# install packages httpd, net-tools, wget and unzip
yum install httpd net-tools wget unzip -y

# start the httpd service in the vm
systemctl start httpd

# enable the httpd server for auto start after the stop/restart vm
systemctl enable httpd


# change directory to tmp
cd /tmp

# download the files from outside
wget https://www.tooplate.com/zip-templates/2119_gymso_fitness.zip

# extract file from zip folder
unzip -o 2119_gymso_fitness.zip

# copy all file to html folder
cp -r 2119_gymso_fitness/* /var/www/html/

# remove or delete zip file and unzip folder
rm -rf 2119_gymso_fitness.zip 2119_gymso_fitness

# restart the http server
systemctl restart httpd
