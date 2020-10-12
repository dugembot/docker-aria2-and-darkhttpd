#!/bin/sh

if [ ! -f /conf/aria2.conf ]; then
    cp /conf-copy/aria2.conf /conf/aria2.conf
    if [ "${SECRET}" ]; then
        echo "rpc-secret=${SECRET}" >> /conf/aria2.conf
    fi
fi

touch /conf/dht.dat /conf/dht6.dat /conf/aria2.session

aria2c --conf-path=/conf/aria2.conf
