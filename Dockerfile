FROM php:7.2-apache-stretch

EXPOSE 8080
EXPOSE 8443

WORKDIR /var/www/html

VOLUME /var/www/html/fileadmin
VOLUME /var/www/html/typo3conf
