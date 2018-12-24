FROM golang:alpine

RUN apk update && apk add git

ENV GO111MODULE=on

RUN go get github.com/alash3al/redix

EXPOSE 6380 7090

ENTRYPOINT ["redix"]

WORKDIR /root/