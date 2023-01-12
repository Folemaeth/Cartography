FROM node:18-alpine
LABEL Description="Cartography development"

WORKDIR /Cartography
COPY . .
RUN /bin/sh -c " apk add --update build-base; \
    apk add --update cmake"


