#read -p "Enter file name:" file_name
if [ -e "$1" ]; then
	word_count=$( wc -w < "$1")
	echo "The number of words in the file is : $word_count"
else
	echo "No such file exists"
fi
