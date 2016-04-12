FROM alpine:latest
MAINTAINER Matt Bodenhamer <mbodenhamer@mbodenhamer.com>

RUN apk add --no-cache \
    bash \
    zip
