#!/bin/bash

read -p "Enter limit for fibonnaci series" limit
a=0
b=1
echo "Fibonnaci series upto $limit:"
echo -n "$a "

while [ "$b" -lt "$limit" ]; do
echo -n "$b "
#calculate the next number
fn=$((a+b))
a=$b
b=$fn
done

#if we didn’t add a plain echo at the end, your terminal prompt would appear on the same line as the last number

echo

