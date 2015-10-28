#!/bin/bash

# color terminal
wget -O ~/.bashrc https://raw.githubusercontent.com/liudanking/opscript/master/Debian8.1/bachrc

# install docker
apt-get update
apt-get install apt-transport-https -y
apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install docker-engine -y

# make docker dir
mkdir -p /app/docker


echo "Done!"