FROM debian:buster

RUN apt update -y
RUN apt upgrade -y
RUN apt install mariadb-server -y

COPY tools/conf /
COPY tools/config.sh config.sh
RUN chmod +x config.sh
CMD ["sh", "config.sh"]