FROM alpine:edge

MAINTAINER Eliot <eliotjoking@gmail.com>

COPY files/conf-copy /conf-copy

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update bash aria2 \
    && chmod +x /conf-copy/start.sh

EXPOSE 6800 6881 6881/udp 

CMD ["/conf-copy/start.sh"]
