if [ $# -ne 2 ]; then
	echo "Usage $0 <filename> <word>"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "File not found"
	exit 2
fi

count=$(grep -o -w "$2" "$1" | wc -l)

echo "The word '$2' occurred $count times in the file '$1'."
