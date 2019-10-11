#!/usr/bin/env sh

if [ -f /hook/before_start.sh ] ; then
	sh /hook/before_start.sh
fi

nginx -g "daemon off;"
