# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kichkiro <kichkiro@student.42firenze.it    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/17 10:13:07 by kichkiro          #+#    #+#              #
#    Updated: 2024/06/24 12:45:32 by kichkiro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:oldstable

RUN apt-get update \
    && apt-get install -y mariadb-server

COPY tools/init_db.sh /tools.d/init_db.sh

RUN chmod +x /tools.d/init_db.sh

RUN sed -i 's/^\(bind-address\s.*\)/# \1/' /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

CMD ["mysqld_safe"]






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
