#!/bin/bash

# Sets the max age 5 days
MAXAGE=5
FOLDER=$1
FORMAT=$2
DESTINAITON=$2

for logfile in $(find $FOLDER -maxdepth 1 -mtime $MAXAGE -type f | grep -E '(.txt|.log)$' ); do
	ls -asl $logfile

	# Moves file to destinaiton
	# TODO: change this to mv 
	cp -vf $logfile $DESTINAITON
done

