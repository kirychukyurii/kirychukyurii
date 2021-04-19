#!/bin/sh
while true;
do echo -e "HTTP/1.1 200 OK\r\n$(date)\r\nContent-Type: text/html; charset=utf-8\r\n\r\n" "$(cat /app/index.html)" | nc -lp $HTTP_PORT;
done
