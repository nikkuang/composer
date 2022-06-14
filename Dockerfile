FROM ubuntu:18.04

WORKDIR /var/www/html

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update \
    && apt-get install -y \
        php7.3-fpm \
        php7.3-mysql \
        php7.3-curl \
        php7.3-gd \
        php7.3-mbstring \
        php7.3-xml
RUN apt-get install -y autoconf zlib1g-dev php7.3-dev php-pear \
        php7.3-zip \
        php7.3-redis \
        php7.3-intl \
        php7.3-bcmath \
        php7.3-soap \
        php7.3-json \
        php7.3-opcache \ 
        php7.3-common \
        php7.3-cli \
        php7.3-readline \  
        php7.3-imagick \
        php7.3-imap
        
RUN pecl install mongodb
RUN apt-get install -y composer
RUN apt-get install -y mysql-client 