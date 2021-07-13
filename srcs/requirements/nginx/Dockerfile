FROM debian:buster

RUN apt-get update && \
    apt-get install -y nginx openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/C=MA/ST=Morocco/L=Benguerir/O=1337Benguerir/CN=yihssan.42.fr" \
    -keyout /etc/ssl/private/yihssan.key -out /etc/ssl/certs/yihssan.crt

#COPY conf/nginx.conf etc/nginx
COPY conf/default /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]