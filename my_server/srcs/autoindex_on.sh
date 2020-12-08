#!/bin/bash

rm -f /etc/nginx/sites-available/nginx_autoindex_off.conf
rm -f /etc/nginx/sites-enabled/nginx_autoindex_off.conf
cp /nginx_autoindex_on.conf /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/nginx_autoindex_on.conf /etc/nginx/sites-enabled/
service nginx restart