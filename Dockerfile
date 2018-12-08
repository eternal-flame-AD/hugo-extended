FROM alpine:latest

COPY artifacts/hugo /usr/local/bin/hugo

RUN apk add --no-cache libstdc++

RUN mkdir /www

WORKDIR /www

CMD [ "/usr/local/bin/hugo" ]