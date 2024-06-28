#!/bin/bash

set -e

apt-get update
apt-get install -y php7.4-fpm php7.4-mysql wget
apt-get clean
rm -rf /var/lib/apt/lists/*

wget https://wordpress.org/wordpress-6.5.4.tar.gz
tar -xzf wordpress-6.5.4.tar.gz
mkdir -p /var/www/html
mv wordpress/* /var/www/html/
rm -rf wordpress wordpress-6.5.4.tar.gz

mkdir -p /run/php
chown -R www-data:www-data /run/php
chmod -R 600 /run/php
chown -R www-data:www-data /var/www/html/
chmod -R 600 /var/www/html
rm -rf  /var/www/html/wp-config-sample.php
