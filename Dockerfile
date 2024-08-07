FROM php:fpm

RUN docker-php-ext-install mysqli

COPY custom-php.ini /usr/local/etc/php/conf.d/

