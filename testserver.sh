#! /bin/bash
if [ $# -ge 1 ]; then
	nc -l 127.0.0.1 -p "$1"
else
	port=9999
	nc -l 127.0.0.1 -p $port
fi
