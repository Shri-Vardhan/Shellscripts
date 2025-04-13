#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Usage: $0 <Path>"
	exit 1
fi

if [ -e "$1" ]; then
	stat -c "Last modified %y" "$1"
else
	echo "File does not exist"
fi
