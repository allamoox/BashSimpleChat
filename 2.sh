port=9999
if [ $# -ge 1 ]
then port=$
fi
nc localhost $port
