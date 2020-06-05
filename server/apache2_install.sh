#!/bin/bash

sudo apt-get update
sudo apt-get install apache2 build-essential libapache2-mod-proxy-html libxml2-dev






sudo a2enmod proxy
sudo a2enmod proxy_http
sudo a2enmod proxy_html
sudo a2enmod ssl
sudo a2enmod headers
sudo a2enmod rewrite
sudo a2enmod proxy_wstunnel



sudo systemctl apache2 restart
