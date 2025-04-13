#!/bin/bash

if [ $# -ne 3 ]; then
	echo "Usage $0 <num1> <operator> <num2>"
	exit 1
fi

case $2 in
+) result=$(($1 + $3))
  ;;

-) result=$(($1 - $3))
  ;;

\*) result=$(($1 * $3))
   ;;

/) if [ $3 -eq 0 ]; then
	echo "Error:Divison by zero"
	exit 1
fi

result=$(($1 / $3))
;;

*) echo "Invalid operator"
exit 1
;;

esac

echo "Result:$result"
