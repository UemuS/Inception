chown -R www-data /var/www/*
chmod -R 755 /var/www/*


mkdir /var/www/yihssan && touch /var/www/yihssan/index.php
echo "<?php phpinfo(); ?>" >> /var/www/yihssan/index.php

#mv ./yihssan /etc/nginx/sites-available/yihssan
ln -s /etc/nginx/sites-available/yihssan /etc/nginx/sites-enabled/yihssan
rm -rf /etc/nginx/sites-enabled/default