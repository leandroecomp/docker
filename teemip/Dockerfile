FROM php:8.3-apache

RUN apt update  -y
#RUN apt upgrade -y
RUN apt install -y \
  nano \
  graphviz \
  wget \
  zip \
  && apt-get clean

# This repository contains a script that can be used to easily install 
# a PHP extension inside the official PHP Docker images.
# https://github.com/mlocati/docker-php-extension-installer/
COPY --from=ghcr.io/mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions gd mysqli soap zip ldap apcu

COPY files/php.ini-production "$PHP_INI_DIR/php.ini"

COPY docker/entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh
#ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

#CMD ["bash"]



