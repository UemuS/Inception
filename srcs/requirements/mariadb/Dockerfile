FROM debian:buster

RUN apt update -y
RUN apt upgrade -y
RUN apt install mariadb-server -y

COPY tools/ /
RUN chmod +x config.sh
CMD ["sh", "config.sh"]