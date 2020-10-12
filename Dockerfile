FROM alpine:edge
WORKDIR /app

MAINTAINER Eliot <eliotjoking@gmail.com>

COPY files/conf-copy /app/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --update bash aria2 \
    && chmod +x /app/start.sh

ADD https://github.com/P3TERX/aria2.conf/raw/master/dht.dat \
    https://github.com/P3TERX/aria2.conf/raw/master/dht6.dat

EXPOSE 6800 6881 6881/udp 

CMD ["bash","/app/start.sh"]
