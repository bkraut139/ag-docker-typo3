FROM php:7.2-apache-stretch

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        wget \
# Configure PHP
        libxml2-dev libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libpq-dev \
        zlib1g-dev \
        
 EXPOSE 8080
