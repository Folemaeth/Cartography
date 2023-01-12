FROM spritsail/alpine:3.8

LABEL Description="Cartography development"

WORKDIR /Cartography
COPY . .

RUN apk --no-cache add cmake make gcc g++
