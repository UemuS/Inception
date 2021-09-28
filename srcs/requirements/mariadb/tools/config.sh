#DB CREATION
service mysql start
sleep 2
mysql -e "CREATE DATABASE IF NOT EXISTS `${WP_DATABASE_NAME}`" 
#DELETE ANONYMOUS USERS
mysql -e "DELETE FROM mysql.user WHERE User=''" 
#mysql user with access only to wordpress
mysql -e "CREATE USER IF NOT EXISTS `${WP_DATABASE_USER}`@'%' IDENTIFIED BY '$WP_DATABASE_PASSWORD'"
mysql -e "GRANT ALL PRIVILEGES ON `${WP_DATABASE_NAME}`.* TO `${WP_DATABASE_USER}`@'%'" 
#SETTING PASSWORD TO ROOT PLUS REMOTE ACCESS 
mysql -e "UPDATE mysql.user SET password=PASSWORD('$WP_ROOT') , host='%', plugin='mysql_native_password' WHERE User='root'"
mysql -e "GRANT ALL PRIVILEGES ON . TO `root`@'%' WITH GRANT OPTION"
mysql -e "FLUSH PRIVILEGES"
service mysql stop
mysqld_safe