#!/bin/bash
mv /conf /etc/mysql/mariadb.conf.d/50-server.cnf
mysql_install_db --user=mysql --datadir=/var/lib/mysql/
if [ "$(ls -A /var/lib/mysql/${WP_DATABASE_NAME})" ]; then
echo "Directory isnt empty"
else
service mysql start
sleep 2
mysql -u root -e "CREATE USER '${WP_DATABASE_USER}'@'%' IDENTIFIED BY '${WP_DATABASE_PASSWORD}'"
mysql -u root -e "CREATE DATABASE ${WP_DATABASE_NAME};use ${WP_DATABASE_NAME}"
mysql -u root -e "use ${WP_DATABASE_NAME};GRANT ALL PRIVILEGES ON * TO '${WP_DATABASE_USER}'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
mysql -u root wordpress < /wp.sql
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${WP_ROOT}';"
fi
echo "Running mariadb in the foreground"
mysqld_safe --datadir='/var/lib/mysql/'