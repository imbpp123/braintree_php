FROM php:7.0-cli
COPY --from=composer:1.9.0 /usr/bin/composer /usr/local/bin/composer

RUN apt-get update
RUN apt-get -y install gnupg curl rake apt-transport-https software-properties-common

WORKDIR /braintree-php
