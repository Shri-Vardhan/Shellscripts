#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Usage $0 <file_one> <file_two>"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "$1 File does not exist"
	exit 2
fi

if [ ! -f "$2" ]; then
	echo "$2 File does not exist"
	exit 3
fi

paste "$1" "$2"
