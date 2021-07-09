FROM debian:buster

RUN apt-get update && \
	apt-get install -y mariadb-server

COPY ./conf /etc/mysql/mariadb.conf.d/
COPY tools/ /tools/

RUN service mysql start && \
	mysql -u root --password= < /tools/init.sql

CMD ["mysqld"]
