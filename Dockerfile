FROM php:7.4-fpm
MAINTAINER Clemente Estrada <mirdrack@gmail.com>

# Install php extensions
RUN docker-php-ext-install pdo pdo_mysql

# Install composer globally
RUN curl -sSL https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer