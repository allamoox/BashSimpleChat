
#/bin/sh

host_name=host
client_name=client

if [ $# -ge 1 ]; then
  port=$1
else
  port=9999
fi

input=/tmp/chat-receive-$port
output=/tmp/chat-sending-$port

rm -f $input
rm -f $output
mkfifo $input
mkfifo $output

clear_line() {
  printf '\r\033[2K'
}

move_cursor_up() {
  printf '\033[1A'
}

server() {
  echo "Starting on port $port"
  tail -f $output | nc -l -p $port > $input
  echo server ending
}
