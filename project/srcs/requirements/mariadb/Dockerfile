# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kichkiro <kichkiro@student.42firenze.it    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/17 10:13:07 by kichkiro          #+#    #+#              #
#    Updated: 2024/06/25 15:20:17 by kichkiro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# FROM debian:oldstable

# RUN apt-get update \ 
#     && apt-get install -y mariadb-server \
#     && rm -rf /var/lib/apt/lists/*

# # COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# RUN mkdir /var/run/mysqld; \
#     chmod 777 /var/run/mysqld; \
#     { echo '[mysqld]'; \
#       echo 'skip-host-cache'; \
#       echo 'skip-name-resolve'; \
#       echo 'bind-address=0.0.0.0'; \
#     } | tee  /etc/my.cnf.d/docker.cnf; \
#     sed -i "s|skip-networking|skip-networking=0|g" \
#       /etc/my.cnf.d/mariadb-server.cnf

# RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

# EXPOSE 3306

# USER mysql

# COPY tools/db.sh .

# ENTRYPOINT  ["bash", "mariadb.sh"]

# CMD ["/usr/bin/mysqld", "--skip-log-error"]


FROM debian:oldstable

COPY tools/init_mariadb.sh /tmp/init_mariadb.sh

RUN chmod +x /tmp/init_mariadb.sh && /tmp/init_mariadb.sh

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

CMD ["mysqld_safe"]
