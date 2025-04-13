#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Usage $0 <string1> <string2>"
	exit 1
fi

if [ "$1" == "$2" ]; then
	echo "The strings are equal"
else
	echo "The stings are not equal"
fi
