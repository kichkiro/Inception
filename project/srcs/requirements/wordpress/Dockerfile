# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kichkiro <kichkiro@student.42firenze.it    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/17 10:13:18 by kichkiro          #+#    #+#              #
#    Updated: 2024/06/24 14:50:25 by kichkiro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# FROM debian:oldstable

# RUN apt-get update \
#     && apt-get install -y php-fpm php-cli wget unzip \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/*

# WORKDIR /var/www/html

# RUN wget https://wordpress.org/latest.zip \
#     && unzip latest.zip \
#     && rm latest.zip \
#     && mv wordpress/* . \
#     && rmdir wordpress

# RUN chown -R www-data:www-data /var/www/html

# # COPY ./php.ini /usr/local/etc/php/

# EXPOSE 9000

# CMD ["php-fpm7.4"]


FROM debian:oldstable

RUN apt-get update \
    && apt-get install -y php-fpm php-cli wget unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://wordpress.org/latest.tar.gz \
    && tar -xzf latest.tar.gz \
    && mkdir -p /var/www/html \
    && mv wordpress/* /var/www/html/ \
    && rm -rf wordpress latest.tar.gz

RUN chown -R www-data:www-data /var/www/html/

COPY conf/php-fpm.conf /etc/php/7.4/fpm/php-fpm.conf

EXPOSE 9000

CMD ["php-fpm7.4"]
