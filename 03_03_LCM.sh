#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <num1> <num2>"
    exit 1
fi

a=$1
b=$2
x=$a
y=$b

# Euclidean algorithm for GCD
while [ $b -ne 0 ]; do
    temp=$b
    b=$((a % b))
    a=$temp
done

gcd=$a
lcm=$(( (x * y) / gcd ))

echo "GCD of $x and $y is: $gcd"
echo "LCM of $x and $y is: $lcm"

