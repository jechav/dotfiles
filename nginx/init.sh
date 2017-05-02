#!bin/bash

sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default_old
sudo ln -s "$(pwd)/nginx.default" /etc/nginx/sites-available/default
