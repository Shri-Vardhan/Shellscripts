read -p "Enter a string:" string
reversed_string=$(echo "$string" | rev )

if [ "$string" = "$reversed_string" ]; then
	echo "Palindrome"
else 
	echo "Not a palindrome"
fi 
