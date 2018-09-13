#!/bin/bash


#update the package
sudo yum -y update

# install apaches
sudo yum install httpd
sudo systemctl enable httpd
sudo systemctl start httpd


#allowApache trafic through firewall
sudo firewall-cmd --zone=public --permanent --add-service=http
sudo firewall-cmd --zone=public --permanent --add-service=https
sudo firewall-cmd --reload

sudo systemctl status httpd

sudo httpd -v





echo "This is a silly script" > /tmp/silly.txt

