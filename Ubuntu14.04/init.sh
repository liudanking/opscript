#!/bin/bash

# color terminal
echo "color terminal"
wget -O ~/.bashrc https://raw.githubusercontent.com/liudanking/opscript/master/Ubuntu14.04/bachrc
source ~/.bashrc

# use google dns
#echo "use google dns"
#echo "nameserver 8.8.8.8
#nameserver 8.8.4.4" >> /etc/resolvconf/resolv.conf.d/head
#resolvconf -u

# set file description number
echo "set file description number"
echo "root soft nofile 75535
root hard nofile 75535
* soft nofile 65535
* hard nofile 65535" >> /etc/security/limits.conf

# set file description number
echo "set file description number"
echo "# network tuning
fs.file-max = 2560000

net.ipv4.tcp_syn_retries = 2
net.ipv4.tcp_synack_retries = 2
net.ipv4.tcp_keepalive_time = 600
net.ipv4.tcp_keepalive_probes = 3
net.ipv4.tcp_keepalive_intvl =15
net.ipv4.tcp_retries2 = 5
net.ipv4.tcp_fin_timeout = 2
net.ipv4.tcp_max_tw_buckets = 36000
net.ipv4.tcp_tw_recycle = 0
net.ipv4.tcp_tw_reuse = 1
net.ipv4.tcp_max_orphans = 32768
net.ipv4.tcp_syncookies = 1
net.ipv4.tcp_max_syn_backlog = 16384
net.ipv4.tcp_wmem = 8192 131072 16777216
net.ipv4.tcp_rmem = 32768 131072 16777216
net.ipv4.tcp_mem = 786432 1048576 1572864
net.ipv4.ip_local_port_range = 1024 65000
net.core.somaxconn = 16384
net.core.netdev_max_backlog = 16384" >> /etc/sysctl.conf


# install docker
apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install docker-engine -y

# make docker dir
mkdir -p /app/docker


echo "Done!"
