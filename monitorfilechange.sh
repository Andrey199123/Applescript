#!/bin/bash

while true
do
# today in seconds since the epoch
today=$(date +%s)
# last file change in seconds since the epoch
lastchange=$(stat -f '%m' "/Users/andreyvasilyev/Library/Messages/chat.db")
# number of seconds between today and the last change
timedelta=$((today - lastchange))
# decide to do a backup if the timedelta is greater than
# an arbitrary number of second
# ie. 7 days (7d * 24h * 60m * 60s = 604800 seconds)
if [ $timedelta -gt 55 ]; then
	osascript /Users/andreyvasilyev/Library/Scripts/AIMessages.scpt
fi
sleep 60
done
