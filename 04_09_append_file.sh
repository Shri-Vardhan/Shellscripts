if [ $# -ne 2 ]; then
	echo "Usage $0 <sourcefile> <targetfile>"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "Source File $1 not found"
	exit 2
fi

if [ ! -f "$2" ]; then
	echo "Target File $2 not found"
	exit 3
fi

cat "$1" >> "$2"

echo "Contents of $1 have been appended to $2"



