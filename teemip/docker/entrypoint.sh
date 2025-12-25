#!/bin/bash
TEEMIP_VERSION="3.2.2"
TEEMIP_SOURCE="TeemIP-3.2.2-2508.zip"
TEEMIP_URL="https://sourceforge.net/projects/teemip/files/teemip%20-%20a%20standalone%20application"

if [ ! -z "$(ls -A "/var/www/html/")" ]; then
  echo "The Folder is not empty."
else
  echo "Folder empty. Proced with installation."
#  wget https://sourceforge.net/projects/teemip/files/teemip%20-%20a%20standalone%20application/3.2.1/TeemIP-3.2.1-2412.zip/download -O /tmp/TeemIP-3.2.1-2412.zip
  wget $TEEMIP_URL/$TEEMIP_VERSION/$TEEMIP_SOURCE/download -O /tmp/$TEEMIP_SOURCE
  unzip /tmp/$TEEMIP_SOURCE "web/*" -d /tmp/
  cp -rf /tmp/web/* /var/www/html/
  rm -rf /tmp/*
  chown -R www-data:www-data /var/www/html
fi

echo "Starting Apache..."
exec "$@"
