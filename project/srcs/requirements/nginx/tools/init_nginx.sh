#!/bin/bash

set -e

# Install Nginx -------------------------------------------------------------->
apt-get update
apt-get install -y nginx
apt-get clean
rm -rf /var/lib/apt/lists/*

# Config Nginx --------------------------------------------------------------->
rm -rf /etc/nginx/modules-enabled
rm -rf /etc/nginx/modules-available
