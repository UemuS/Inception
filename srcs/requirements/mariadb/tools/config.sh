service mysql start
mysql -u root -e "CREATE USER '${WP_DATABASE_USER}'@'%' IDENTIFIED BY '${WP_DATABASE_PASSWORD}'"
mysql -u root -e "CREATE DATABASE ${WP_DATABASE_NAME};use ${WP_DATABASE_NAME}"
mysql -u root -e "use ${WP_DATABASE_NAME};GRANT ALL PRIVILEGES ON * TO '${WP_DATABASE_USER}'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
echo "Running mariadb in the foreground"
mysqld_safe --datadir='/var/lib/mysql/'