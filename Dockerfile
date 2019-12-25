FROM php:7.4-fpm
MAINTAINER Clemente Estrada <mirdrack@gmail.com>

# Install base dependencies
RUN apt update && apt install -y \
    libzip-dev \
	zip

# Install php extensions
RUN docker-php-ext-install pdo pdo_mysql zip

# Install composer globally
RUN curl -sSL https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

# Clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    rm /var/log/lastlog /var/log/faillog