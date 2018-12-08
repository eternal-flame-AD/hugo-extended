FROM alpine:latest

COPY artifacts/hugo /usr/local/bin/hugo

RUN mkdir /www

WORKDIR /www

RUN [ "/usr/local/bin/hugo" ]