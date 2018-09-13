#!/bin/bash


#update the package

sudo yum -y update

# install apaches
sudo yum install httpd
#allowApache trafic through firewall

echo "This is a silly script" > /tmp/silly.txt

