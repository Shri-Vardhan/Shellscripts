if [ $# -ne 2 ]; then
	echo "Usage: $0 <filename> <string>"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "ERROR: File $1  not found"
	exit 1
fi

grep -n "$1" "$2" | cut -d: -f1




