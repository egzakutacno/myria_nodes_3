#!/usr/bin/expect

# Stop the myria-node service
spawn myria-node --stop
expect "API KEY:"
send "APIkey\n"
expect eof
