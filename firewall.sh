#!/bin/bash

# Allow connections
sudo ufw allow http
sudo ufw allow https
sudo ufw allow ssh

# Enable ufw
sudo ufw enable
sudo systemctl enable ufw

echo "UFW started successfully."
