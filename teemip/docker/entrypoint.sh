#!/bin/bash

if [ -z "$(ls -A "/var/www/html/")" ]; then
  echo "Folder empty. Proced with installation."
  wget https://sourceforge.net/projects/teemip/files/teemip%20-%20a%20standalone%20application/3.2.1/TeemIP-3.2.1-2412.zip/download -O /tmp/TeemIP-3.2.1-2412.zip
  unzip /tmp/TeemIP-3.2.1-2412.zip "web/*" -d /tmp/
  cp -rf /tmp/web/* /var/www/html/
  rm -rf /tmp/*
  chown -R www-data:www-data /var/www/html
else
  echo "The Folder is not empty."
fi
