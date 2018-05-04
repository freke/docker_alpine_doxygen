FROM alpine:latest

RUN apk update
RUN apk upgrade --available
RUN apk add --update-cache doxygen graphviz
RUN rm -rf /var/cache/apk/*

VOLUME /doc
WORKDIR /doc


ENTRYPOINT ["doxygen"]
