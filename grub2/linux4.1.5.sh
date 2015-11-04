#!/bin/bash

apt-get update
cd ~
mkdir -p 4.1.5
cd 4.1.5
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.5-unstable/linux-headers-4.1.5-040105-generic_4.1.5-040105.201508101730_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.5-unstable/linux-headers-4.1.5-040105_4.1.5-040105.201508101730_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.5-unstable/linux-image-4.1.5-040105-generic_4.1.5-040105.201508101730_amd64.deb
dpkg -i *.deb

cd ..
wget https://www.kernel.org/pub/linux/kernel/v4.x/linux-4.1.5.tar.gz