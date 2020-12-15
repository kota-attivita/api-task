FROM golang:1.12.0-alpine3.9

ENV SRC_DIR=/go/src/github.com/api

WORKDIR $SRC_DIR

ADD . $SRC_DIR

ENV GO111MODULE=on

RUN apk add --no-cache \
  alpine-sdk \
  git \
  && go get github.com/pilu/fresh

EXPOSE 8080

CMD ["fresh"]