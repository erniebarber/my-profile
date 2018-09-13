#!/bin/bash


#update the package
sudo yum clean all
sudo yum -y install

# install apaches
sudo yum install httpd

#allowApache trafic through firewall
sudo firewall-cmd --permanent --add-port=80/tcp
sudo firewall-cmd --permanent --add-port=443/tcp
sudo firewall-cmd --reload

sudo systemctl stop httpd.service
sudo systemctl start httpd.service
sudo systemctl enable httpd.service

echo "This is a silly script" > /tmp/silly.txt

