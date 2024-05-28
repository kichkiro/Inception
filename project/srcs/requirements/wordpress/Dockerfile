FROM debian:oldstable

RUN apt-get update \
    && apt-get install -y php php-mysql wget unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

RUN wget https://wordpress.org/latest.zip \
    && unzip latest.zip \
    && rm latest.zip \
    && mv wordpress/* . \
    && rmdir wordpress

RUN chown -R www-data:www-data /var/www/html

# COPY ./php.ini /usr/local/etc/php/

# EXPOSE 9000

# CMD ["/usr/sbin/php-fpm"]

