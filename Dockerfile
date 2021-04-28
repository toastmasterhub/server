FROM golang:1.16-alpine as builder
RUN apk --no-cache add ca-certificates git
WORKDIR /build/th-server

COPY go.mod ./
RUN go mod download