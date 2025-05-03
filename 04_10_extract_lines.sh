#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Usage $0 <filename> <number_of_lines>"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "File not found"
	exit 2 
fi

head -n "$2" "$1"
