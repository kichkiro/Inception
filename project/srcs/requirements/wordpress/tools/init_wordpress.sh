#!/bin/bash

apt-get update
apt-get install -y php-fpm php-cli wget unzip
apt-get clean
rm -rf /var/lib/apt/lists/*
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
mkdir -p /var/www/html
mv wordpress/* /var/www/html/
rm -rf wordpress latest.tar.gz
mkdir -p /run/php
chown www-data:www-data /run/php
chown -R www-data:www-data /var/www/html/
