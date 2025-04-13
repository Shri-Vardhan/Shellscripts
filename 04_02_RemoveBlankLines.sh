if [ $# -ne 1 ]; then
	echo "Usage: $0 <filename>"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "ERROR: File $1 not found"
	exit 1
fi

grep -v '^[[:space:]]*$' "$1"


