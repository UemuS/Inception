mkdir -p /var/www/html
chown -R www-data /var/www/*
chmod -R 755 /var/www/*
echo "<?php phpinfo(); ?>" >> /var/www/html/index.php
wget -c https://wordpress.org/latest.tar.gz && \
mkdir /var/www/html/phpmyadmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar -xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz --strip-components 1 -C /var/www/html/phpmyadmin
mv ./phpmyadmin.inc.php /var/www/html/phpmyadmin/config.inc.php
tar -xvzf latest.tar.gz && \
mv wordpress/* /var/www/html && \
mv wp-config.php /var/www/html