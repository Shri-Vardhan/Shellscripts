#!/bin/bbash
if [ "$#" -ne 2 ]; then
	echoif [ "$#" -ne 2 ]; then
    echo "Usage: $0 /path/to/directory size"
    echo "Example: $0 /home/user/downloads 100M"
    exit 1
fi

DIRECTORY=$1
SIZE=$2

# Check if the directory exists
if [ ! -d "$DIRECTORY" ]; then
    echo "Error: Directory $DIRECTORY does not exist."
    exit 1
fi

find "$DIRECTORY" -type f -size +"$SIZE" -exec rm -v {} \;

