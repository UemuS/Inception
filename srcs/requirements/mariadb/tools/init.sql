CREATE DATABASE wordpress;
CREATE USER 'yihssan'@'%' IDENTIFIED BY 'yihssan';
GRANT ALL PRIVILEGES ON *.* TO 'yihssan'@'%';
FLUSH PRIVILEGES;
update mysql.user set plugin = 'mysql_native_password' where user='root';
