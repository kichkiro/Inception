# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kichkiro <kichkiro@student.42firenze.it    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/17 10:13:18 by kichkiro          #+#    #+#              #
#    Updated: 2024/06/26 15:07:31 by kichkiro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:oldstable

ARG WORDPRESS_DB_HOST
ARG WORDPRESS_DB_NAME
ARG WORDPRESS_DB_USER
ARG WORDPRESS_DB_PASS

COPY tools/init_wordpress.sh /tmp/init_wordpress.sh

RUN chmod +x /tmp/init_wordpress.sh && /tmp/init_wordpress.sh

COPY conf/php-fpm.conf /etc/php/7.4/fpm/php-fpm.conf
COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY conf/wp-config.php /var/www/html/wp-config.php

EXPOSE 9000

CMD ["php-fpm7.4", "-F"]
