#!/bin/bash

# Telegram Bot config
BOT_TOKEN="Bot Token"
CHAT_ID="Chat Id"

# Login info
MESSAGE="PC Boot Up Detected: 
Username: $(hostname)
Time: $(date)"

# Send to Telegram
curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
    -d chat_id="$CHAT_ID" \
    -d text="$MESSAGE" >/dev/null
 
# Notes
# Make Telegram Bot
# GetUpdates for you Chat Id
