FROM alpine:latest

ENV GO_VERSION 1.11.2

RUN apk update && apk add git

RUN wget -O - https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz | tar -C /usr/local -xz && \
    export PATH=$PATH:/usr/local/go/bin && \
    mkdir build && cd build && git clone https://github.com/gohugoio/hugo.git && cd hugo && \
    go install --tags extended -ldflags "-s -w" && mv $HOME/go/bin/hugo /usr/local/bin/ && \
    rm -rf /usr/local/go && rm -rf $HOME/go && cd ../ && rm -rf hugo

ENTRYPOINT [ "/usr/local/bin/hugo" ]