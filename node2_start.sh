#!/usr/bin/expect

# Stop the myria-node service
spawn myria-node --start
expect "API KEY:"
send "APIKey\n"
expect eof
