#!/bin/bash

apt-get update
apt-get install -y mariadb-server
apt-get clean
rm -rf /var/lib/apt/lists/*

mysql -u root -p"${MYSQL_ROOT_PASSWORD}" -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
# mysql -u root -p"${MYSQL_ROOT_PASSWORD}" DELETE FROM mysql.user WHERE User='';
# mysql -u root -p"${MYSQL_ROOT_PASSWORD}" DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
# mysql -u root -p"${MYSQL_ROOT_PASSWORD}" DROP DATABASE IF EXISTS test;
# mysql -u root -p"${MYSQL_ROOT_PASSWORD}" DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';
# mysql -u root -p"${MYSQL_ROOT_PASSWORD}" FLUSH PRIVILEGES;


# mysql -e "UPDATE mysql.user SET Password=PASSWORD('${MYSQL_ROOT_PASSWORD}') WHERE User='root';"
# mysql -e "DELETE FROM mysql.user WHERE User='';"
# mysql -e "DROP DATABASE test;"
# mysql -e "FLUSH PRIVILEGES;"
# mysql -e "CREATE DATABASE ${MYSQL_DATABASE};"
# mysql -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
# mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
# mysql -e "FLUSH PRIVILEGES;"










































	# ${info ██╗███╗   ██╗ ██████╗███████╗██████╗ ████████╗██╗ ██████╗ ███╗   ██╗}
	# ${info ██║████╗  ██║██╔════╝██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║}
	# ${info ██║██╔██╗ ██║██║     █████╗  ██████╔╝   ██║   ██║██║   ██║██╔██╗ ██║}
	# ${info ██║██║╚██╗██║██║     ██╔══╝  ██╔═══╝    ██║   ██║██║   ██║██║╚██╗██║}
	# ${info ██║██║ ╚████║╚██████╗███████╗██║        ██║   ██║╚██████╔╝██║ ╚████║}
	# ${info ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝╚═╝        ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝}
	# ${info }
