if [ $# -ne 1 ]; then
	echo "Usage $0 <filename>"
	exit 1
fi

if [ -e "$1" ]; then
	echo "Reversed contents of the file:"
	tac "$1" | rev


else
	echo "File does not exist"

fi
