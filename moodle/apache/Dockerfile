FROM httpd:2.4

# Enable required Apache modules for PHP-FPM
RUN apt-get update && apt-get install -y \
    apache2-bin \
    libapache2-mod-fcgid \
    && rm -rf /var/lib/apt/lists/*

#RUN a2enmod proxy_fcgi

# Enable modules
RUN sed -i \
    -e 's/#LoadModule proxy_module/LoadModule proxy_module/' \
    -e 's/#LoadModule proxy_fcgi_module/LoadModule proxy_fcgi_module/' \
    conf/httpd.conf

# Copy a basic virtual host config pointing to php-fpm
COPY files/php-fpm.conf  /usr/local/apache2/conf/extra/php-fpm.conf
RUN echo "Include conf/extra/php-fpm.conf" >> conf/httpd.conf
