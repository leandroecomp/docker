FROM php:8.3-apache-bookworm

RUN apt update  -y
RUN apt install -y \
  nano \
  graphviz \
  wget \
  zip \
  && apt-get clean

# Easy installation of PHP extensions in official PHP Docker images
# - from GitHub Container Registry:
# RUN  --mount=type=bind,from=ghcr.io/mlocati/php-extension-installer:latest,source=/usr/bin/install-php-extensions,target=/usr/local/bin/install-php-extensions \
#    install-php-extensions gd xdebug
# - from Docker Hub:
RUN --mount=type=bind,from=mlocati/php-extension-installer:latest,source=/usr/bin/install-php-extensions,target=/usr/local/bin/install-php-extensions \
    install-php-extensions gd mysqli soap zip ldap apcu

COPY files/php.ini-production "$PHP_INI_DIR/php.ini"
RUN echo "ServerName localhost" >> /etc/apache2/httpd.conf

COPY docker/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# Use CMD to start Apache (will be passed as arguments to entrypoint.sh)
CMD ["apache2-foreground"]
]
