#!/bin/bash


#update the package
sudo yum -y update

# install apaches
sudo yum install httpd

#allowApache trafic through firewall
sudo firewall-cmd --permanent --add-port=80/tcp
sudo firewall-cmd --permanent --add-port=443/tcp
sudo firewall-cmd --reload

sudo systemctl stop httpd
sudo systemctl start httpd
sudo systemctl enable httpd







echo "This is a silly script" > /tmp/silly.txt

