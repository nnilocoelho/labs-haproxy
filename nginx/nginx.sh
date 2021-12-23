#!/bin/bash

# sudo yum update -y
sudo yum install nginx vim -y
sudo systemctl enable nginx
sudo echo "<h1> Olá do servidor $(hostname -f)! :) </h1>" > /usr/share/nginx/html/index.html
sudo systemctl start nginx
sudo sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
sudo setenforce 0