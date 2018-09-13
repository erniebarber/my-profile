#!/bin/bash


#update the package
sudo yum -y update

# install apaches
sudo yum install httpd
sudo systemctl start httpd.service
sudo systemctl enable httpd.service

sudo firewall-cmd --zone=public --permanent --add-service=http
sudo firewall-cmd --zone=public --permanent --add-service=https
sudo firewall-cmd --reload



echo "This is a silly script" > /tmp/silly.txt

