FROM debian:9.2
MAINTAINER enrico.simonetti@gmail.com

RUN apt-get update && apt-get install -y curl apt-transport-https lsb-release ca-certificates --no-install-recommends
RUN curl -sS https://packages.sury.org/php/apt.gpg -o /etc/apt/trusted.gpg.d/php.gpg
RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list

RUN apt-get update && apt-get install -y \
    unzip \
    vim \
    build-essential \
    apache2 \
    php7.1-curl \
    php7.1-gd \
    php7.1-bcmath \
    php7.1-mbstring \
    php7.1-imap \
    php7.1-zip \
    php7.1-ldap \
    php7.1 \
    php7.1-dev \
    php7.1-mcrypt \
    php-redis \
    php7.1-mysql \
    php-xdebug \
    php-tideways \
    --no-install-recommends \
&& apt-get autoclean && apt-get -y autoremove && rm -rf /var/lib/apt/lists/*
