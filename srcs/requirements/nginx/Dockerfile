FROM debian:buster

RUN apt-get update && \
    apt-get install -y nginx openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/C=MA/ST=Rhamna/L=Benguerir/O=1337Benguerir/CN=yihssan.42.fr" \
    -keyout /etc/ssl/private/yihssan.key -out /etc/ssl/certs/yihssan.crt

#COPY conf/nginx.conf etc/nginx
RUN  rm -rf /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
COPY conf/default /etc/nginx/sites-available/
RUN  ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled
CMD ["nginx", "-g", "daemon off;"]