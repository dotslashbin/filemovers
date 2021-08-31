#!/bin/bash

# Sets the max age 5 days\
MAXDAYS=21

FOLDER=$1
DESTINAITON=$2

if [[ -z "$MAXDAYS" ]]; then
	echo "You must set the max days from the makefile..."
	exit 1
fi

if [ "$#" -ne 2 ]; then 
	echo "You must supply the required and valid inputs."
	echo "Sample: ./mover.sh <source-folder> <destination-folder>"
	exit 1
fi

for logfile in $(find $FOLDER -maxdepth 1 -mtime +$MAXDAYS -type f | grep -E '(.txt|.log)$'); do
	ls -asl $logfile

	# Moves file to destinaiton
	# TODO: change this to mv
	echo $(mv -vf $logfile $DESTINAITON) >> log.txt
done
