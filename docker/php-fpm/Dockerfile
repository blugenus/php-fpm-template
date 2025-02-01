FROM php:8.4.1-fpm

ENV APP_HOME /var/www/html

ARG UID
ARG GID

ARG UNAME=www-data
ARG UGROUP=www-data

RUN apt-get update -y && \
	apt-get -y install htop && \
	pecl install apcu && \
	docker-php-ext-enable apcu --ini-name docker-php-ext-10-apcu.ini && \
	docker-php-ext-install opcache

RUN usermod  --uid ${UID} ${UNAME}
RUN groupmod --gid ${GID} ${UGROUP}

WORKDIR ${APP_HOME}

USER ${UNAME}
