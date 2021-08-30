#!/bin/bash

MAXAGE=$(bc <<<'24*60*60') # seconds in 28 hours

# file age in seconds = current_time - file_modification_time.
FILEAGE=$(($(date +%s) - $(stat -c '%Y' "$1")))

# Tests if a file is older than the max age of 24 hours 
if [ $FILEAGE -gt $MAXAGE ]; then
	echo "older"
fi