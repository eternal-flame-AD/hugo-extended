FROM alpine:latest

COPY artifacts/hugo /usr/local/bin/hugo

ENTRYPOINT [ "/usr/local/bin/hugo" ]