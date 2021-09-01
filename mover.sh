#!/bin/bash

# Sets the max age: default 21 days
MAXDAYS=$3

FOLDER=$1
DESTINAITON=$2

if [ "$#" -ne 3 ]; then 
	echo "You must supply the required and valid inputs."
	echo "Sample: ./mover.sh <source-folder> <destination-folder> <number-of-max-days>"
	exit 1
fi

for logfile in $(find $FOLDER -maxdepth 1 -mtime +$MAXDAYS -type f | grep -E '(.txt|.log)$'); do
	# Moves file to destinaiton
	echo $(mv -vf $logfile $DESTINAITON) >> move_log.txt
done
