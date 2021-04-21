#!/bin/bash
# Package list from https://github.com/UniversalOJ/UOJ-System
apt update
export DEBIAN_FRONTEND=noninteractive
dpkg -s gnupg 2>/dev/null || (apt install -y gnupg)
echo "deb http://ppa.launchpad.net/stesie/libv8/ubuntu bionic main" | tee /etc/apt/sources.list.d/stesie-libv8.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D858A0DF
apt update
apt install -y vim ntp zip curl wget git
apt install -y apache2 libapache2-mod-xsendfile
apt install -y libapache2-mod-php php php-dev php-pear php-zip php-mysql php-mbstring libv8-7.5-dev libyaml-dev
apt install -y python python3
apt install -y build-essential cmake re2c
apt install -y mysql-server
printf "/opt/libv8-7.5\n\n" | pecl install v8js yaml
