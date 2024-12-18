FROM php:8.1-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql bcmath

RUN apk add --no-cache --virtual build-essentials \
    icu-dev icu-libs zlib-dev g++ make automake autoconf libzip-dev \
    libpng-dev libwebp-dev libjpeg-turbo-dev freetype-dev && \
    docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp && \
    docker-php-ext-install gd

COPY crontab /etc/crontabs/root


CMD ["crond", "-f"]