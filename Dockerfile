FROM php:8.1.3RC1-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y git libpng-dev


# Install PHP extensions
RUN docker-php-ext-install pdo_mysql

RUN docker-php-ext-install gd

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www
