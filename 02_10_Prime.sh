#!/bin/bash


if [ -z "$1" ]; then
echo "Please give a number"
echo "Usage $0 Number"
exit 1
fi

if [ "$1" -le 1 ]; then
echo "Not a prime number"
exit 1
fi

for (( i=2 ; i<$1 ; i++ ))
do
	if (( $1 % i == 0 )); then
	echo "Not a prime number"
	exit
	fi
done

echo "Prime number"
