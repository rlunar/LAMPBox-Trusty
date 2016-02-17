#!/usr/bin/env bash

# Update Package List
apt-get update

# Update System Packages
apt-get -y upgrade

# Force Locale
echo "LC_ALL=en_US.UTF-8" >> /etc/default/locale
locale-gen en_US.UTF-8

# Antivirus
apt-get install -y clamav
apt-get install -y clamav-daemon

# Basic Tools ##############################################################
apt-get install -y python-software-properties
apt-get install -y curl
apt-get install -y git
apt-get install -y nano
apt-get install -y openssh-server
apt-get install -y python2.7-dev
apt-get install -y p7zip-full
apt-get install -y zip
apt-get install -y unzip

# Ajenti ######################################################################
apt-get remove apache2
wget -O- https://raw.github.com/ajenti/ajenti/1.x/scripts/install-ubuntu.sh | sudo sh
apt-get install -y ajenti-v
apt-get install -y ajenti-v-nginx
apt-get install -y ajenti-v-mysql
apt-get install -y ajenti-v-php-fpm
apt-get install -y php5-mysqlnd
apt-get install -y php5-cli
apt-get install -y php-pear
apt-get install -y dbus
service ajenti restart
