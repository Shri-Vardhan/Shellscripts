read -p "Enter file name:" file_name
if [ -e "$file_name" ]; then
	echo "Reversed contents of file:"
	tac "$file_name" | rev
else
	echo "File Does not exist"
fi
