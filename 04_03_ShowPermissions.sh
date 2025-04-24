if [ $# -ne 1 ]; then
	echo "Usage $0 <Directory>"
	exit 1
fi

if [ ! -d "$1" ]; then
	echo "Directory does not exist"
	exit 2
fi

echo "File permissions in Directory $1"
echo "--------------------------------"

for file in "$1"/*; do
    # Check if it's a regular file
    if [ -f "$file" ]; then
        perms=$(ls -l "$file" | awk '{print $1, $9}')
        echo "$perms"
    fi
done
