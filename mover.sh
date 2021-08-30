#!/bin/bash

# Sets the max age
MAXAGE=$(bc <<<'24*60*60') # seconds in 28 hours

for logfile in $(find ./ -maxdepth 1 -type f | grep -E '(.txt|.log)$'); do
	echo $logfile
done

# file age in seconds = current_time - file_modification_time.
FILEAGE=$(($(date +%s) - $(stat -c '%Y' "$1")))

# Tests if a file is older than the max age of 24 hours
if [ $FILEAGE -gt $MAXAGE ]; then
	echo "older"
fi
