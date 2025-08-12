FROM php:8.3-fpm-alpine

RUN apk add --no-cache \
        libpng-dev \
        libjpeg-turbo-dev \
        libwebp-dev \
        libzip-dev \
        icu-dev \
        zlib-dev \
        oniguruma-dev \
        bash \
        git \
        curl \
        unzip \
    && docker-php-ext-configure gd --with-jpeg --with-webp \
    && docker-php-ext-install -j$(nproc) \
        gd \
        intl \
        zip \
        mysqli \
        opcache \
        mbstring \
        exif \
    && apk del git

COPY files/php.ini /usr/local/etc/php/php.ini


RUN { \
      echo 'opcache.enable=1'; \
      echo 'opcache.memory_consumption=256'; \
      echo 'opcache.interned_strings_buffer=16'; \
      echo 'opcache.max_accelerated_files=20000'; \
      echo 'opcache.validate_timestamps=0'; \
      echo 'opcache.save_comments=1'; \
      echo 'opcache.revalidate_freq=0';\
    } > /usr/local/etc/php/conf.d/opcache.ini

WORKDIR /var/www/html

CMD ["php-fpm"]
