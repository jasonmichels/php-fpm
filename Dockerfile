FROM php:5.6-fpm

# Setup Apache and PHP
RUN 	apt-get -o 'Acquire::CompressionTypes::Order::="gz"' update && \
	apt-get install -y --no-install-recommends \
 	libmcrypt-dev \
	libbz2-dev \
	libpng12-dev && \
	docker-php-ext-install mcrypt bz2 gd mbstring zip pdo_mysql mysql mysqli pcntl bcmath && \
	apt-get purge --auto-remove -y libmcrypt-dev libbz2-dev libpng12-dev && \
	apt-get install -y --no-install-recommends libmcrypt4 libbz2-1.0 libpng12-0

COPY config/php.ini /usr/local/etc/php/php.ini