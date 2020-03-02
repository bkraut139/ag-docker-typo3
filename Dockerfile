FROM php:7.2-apache-stretch

EXPOSE 8080
EXPOSE 8443

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd

WORKDIR /var/www/html

#VOLUME /var/www/html/fileadmin
#VOLUME /var/www/html/typo3conf
