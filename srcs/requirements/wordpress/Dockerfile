FROM debian:buster


COPY  tools/ /
RUN apt-get update && \
         apt-get install -y procps &&\
           apt-get install -y wget
RUN sh wp.sh
