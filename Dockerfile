# Start with PHP 8.3 FPM based on Alpine
FROM php:8.3-fpm-alpine

RUN docker-php-ext-install pcntl

RUN apk add --no-cache --virtual build-essentials \
    icu-dev icu-libs zlib-dev g++ make automake autoconf libzip-dev \
    libpng-dev libwebp-dev libjpeg-turbo-dev freetype-dev && \
    docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp && \
    docker-php-ext-install gd

# Install core and dev packages needed for PHP extensions and other utilities
RUN apk add --no-cache --virtual .build-deps \
    $PHPIZE_DEPS \
    icu-dev \
    libzip-dev \
    zlib-dev \
    g++ \
    make \
    automake \
    autoconf

# Install PHP extensions using docker-php-ext-install
RUN docker-php-ext-install \
    pdo \
    pdo_mysql \
    bcmath \
    pcntl

# Configure and install GD extension
RUN docker-php-ext-configure gd \
    --with-freetype \
    --with-jpeg \
    --with-webp \
    && docker-php-ext-install gd

# Clean up unnecessary dev packages
RUN apk del .build-deps

# Copy a custom PHP configuration (optional, if you have one)
# COPY custom-php.ini /usr/local/etc/php/conf.d/

# Set the working directory to the root of your PHP application
WORKDIR /var/www/html

# Command to run PHP-FPM on container start
CMD ["php-fpm"]
