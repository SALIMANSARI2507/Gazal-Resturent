#!/bin/bash
# deploy.sh - Deploy the GHAZAL website on Nginx (Amazon Linux EC2)
# Usage: bash deploy.sh

set -e   # stop the script if any command fails

SOURCE_DIR="$HOME/website"           # folder with website files
SITE_DIR="/usr/share/nginx/html"     # Nginx web directory on Amazon Linux

echo "Updating packages..."
sudo dnf update -y

echo "Installing Nginx..."
sudo dnf install nginx -y

echo "Copying website files..."
sudo cp -r "$SOURCE_DIR"/* "$SITE_DIR"/

echo "Testing Nginx configuration..."
sudo nginx -t

echo "Starting and enabling Nginx..."
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx --no-pager

echo "Deployment complete. Open the server public IP in your browser."
