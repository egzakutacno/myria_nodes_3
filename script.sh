#!/bin/bash

# Run the command and capture its output
output=$(/usr/local/bin/myria-node --status)

# Format the output for sending via Telegram
message=$(echo -e "Command output:\n$output")

# Send the message via Telegram
curl -s -X POST https://api.telegram.org/bot6068012915:AAFTwrA1PCzYps2sKFZb3fcA0AbVi1l12T8/sendMessage -d chat_id=1425361778 -d text="$message"
