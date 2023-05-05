FROM golang:1.20.2-alpine

RUN apk update \
    && apk upgrade \
    && apk add --no-cache git bash make gcc build-base \
    && apk add --no-cache tzdata

RUN go install github.com/pressly/goose/cmd/goose@latest
