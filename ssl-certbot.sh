#!/bin/bash

# Update packages
sudo apt-get update

# Install certbot
sudo apt-get install certbot

# Ask for domain name
read -p "Enter your domain name: " domain

# Obtain SSL certificate
sudo certbot certonly --standalone -d $domain -d www.$domain

# Copy SSL certificates
sudo mkdir -p ./ssl
sudo cp /etc/letsencrypt/live/$domain/fullchain.pem ./ssl/
sudo cp /etc/letsencrypt/live/$domain/privkey.pem ./ssl/
