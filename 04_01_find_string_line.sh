if [ $# -ne 2 ]; then
	echo "Usage: $0 <string> <filename>"
	exit 1
fi

if [ ! -f "$2" ]; then
	echo "ERROR: File $2  not found"
	exit 1
fi

grep -n "$1" "$2"




