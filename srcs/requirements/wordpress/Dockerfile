FROM debian:buster

EXPOSE 9000

COPY  tools/ /
RUN apt-get update
RUN apt-get -y install php7.3-fpm php7.3-common php7.3-mysql php7.3-gmp php7.3-curl php7.3-intl php7.3-mbstring php7.3-xmlrpc php7.3-gd php7.3-xml php7.3-cli php7.3-zip php7.3-soap php7.3-imap && \
         apt-get install -y procps &&\
           apt-get install -y wget
RUN chmod +x wp.sh
CMD [ "sh", "wp.sh" ]