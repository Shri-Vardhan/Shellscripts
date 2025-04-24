if [ $# -eq 0 ]; then
	echo "Usage $0 <filename>"
	exit 1
fi 

if [ ! -f "$1" ]; then
	echo "No file found"
	exit 2
fi

sort "$1"
