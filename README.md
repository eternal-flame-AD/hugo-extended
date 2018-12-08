# hugo-extended
[![Build Status](https://travis-ci.org/eternal-flame-AD/hugo-extended.svg?branch=master)](https://travis-ci.org/eternal-flame-AD/hugo-extended)
[![Docker Pulls](https://img.shields.io/docker/pulls/efad/hugo-extended.svg)](https://hub.docker.com/r/efad/hugo-extended/)

Docker image for hugo (extended version) based on `alpine:latest`

### Build locally:

```
docker run --rm -v `pwd`:/www -w /www efad/hugo-extended
```

### GitLab Pipeline

```
build:
  stage: generate
  image: efad/hugo-extended
  script:
    - hugo
  artifacts:
    paths:
      - public/
    expire_in: 1 day
```