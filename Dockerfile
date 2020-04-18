FROM php:7-apache

RUN docker-php-ext-install pdo 
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install gettext
RUN docker-php-ext-install zlib
RUN docker-php-ext-install gd
RUN docker-php-ext-install curl
RUN docker-php-ext-install exif
RUN a2enmod rewrite
RUN service apache2 restart

EXPOSE 80

