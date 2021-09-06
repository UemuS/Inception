chown -R www-data /var/www/html
chmod -R 755 /var/www/html/
echo "<?php phpinfo(); ?>" >> /var/www/html/index.php
wget -c https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
mv wordpress/* /var/www/html/
sed -i "s/CHANGE_DB_HOST/$WP_HOSTNAME/g" /wp-config.php
sed -i "s/CHANGE_DB_NAME/$WP_DATABASE_NAME/g" /wp-config.php
sed -i "s/CHANGE_DB_USER/$WP_DATABASE_USER/g" /wp-config.php
sed -i "s/CHANGE_DB_PASSWORD/$WP_DATABASE_PASSWORD/g" /wp-config.php
cp wp-config.php /var/www/html/wp-config.php
mv /www.conf /etc/php/7.3/fpm/pool.d/www.conf
service php7.3-fpm start
service php7.3-fpm stop
echo "Starting php7.3-fpm in the foreground"
php-fpm7.3 -F -R