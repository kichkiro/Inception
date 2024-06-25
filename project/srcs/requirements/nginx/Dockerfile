# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kichkiro <kichkiro@student.42firenze.it    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/17 10:11:54 by kichkiro          #+#    #+#              #
#    Updated: 2024/06/25 13:05:03 by kichkiro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:oldstable

COPY tools/init_nginx.sh /tmp/

RUN chmod +x /tmp/init_nginx.sh && /tmp/init_nginx.sh

COPY conf/kichkiro.42.fr.conf /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
