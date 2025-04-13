if [ $# -ne 1 ]; then
	echo "Usage $0 <path>"
	exit 1
fi

if [ -f "$1" ]; then
	echo "$1 is a regular file"
elif [ -d "$1" ]; then
	echo "$1 is a directory"
elif [ -l "$1" ]; then
	echo "$1 is a symbolic link"
else
	echo "$1 is of unknown type"
fi
