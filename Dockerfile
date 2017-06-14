FROM alpine:latest

MAINTAINER CryptoPlay <docker@cryptoplay.tk>

RUN apk add --no-cache \
    bash \
    zip
    
RUN mkdir /data

COPY docker-entrypoint.sh /entrypoint.sh

VOLUME ["/data"]

ENTRYPOINT ["/entrypoint.sh"]
