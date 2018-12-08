mkdir artifacts
docker run -i --rm -v ${PWD}/artifacts:/root/artifacts golang:1.11-alpine sh << CMD
apk add git gcc musl-dev g++
cd /root
git clone https://github.com/gohugoio/hugo.git
cd hugo
go install --tags extended
cd ../
cp \$GOPATH/bin/hugo /root/artifacts
CMD
