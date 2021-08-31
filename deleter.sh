#!/bin/bash

# Sets the max age: default 365 days ( 1 year )
MAXDAYS=365

FOLDER=$1

if [[ -z "$MAXDAYS" ]]; then
	echo "You must set the max days from the makefile..."
	exit 1
fi

if [ "$#" -ne 1 ]; then
	echo "You must supply the required and valid inputs."
	echo "Sample: ./deleter.sh <folder-to-clean>"
	exit 1
fi

for logfile in $(find $FOLDER -maxdepth 1 -mtime +$MAXDAYS -type f); do
	# Deletes the files form the result
	echo $(rm -vf $logfile) >> delete_log.txt
done
