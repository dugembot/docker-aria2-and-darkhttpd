#!/bin/sh

    if [ "${SECRET}" ]; then
        echo "rpc-secret=${SECRET}" >> /app/aria2.conf
    fi

touch /conf/aria2.session

aria2c --conf-path=/app/aria2.conf&
