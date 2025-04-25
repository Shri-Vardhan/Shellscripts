#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

FILE=$1

# Check if file exists
if [ ! -f "$FILE" ]; then
    echo "File not found!"
    exit 1
fi

echo "Duplicate lines in $FILE:"
sort "$FILE" | uniq -d
