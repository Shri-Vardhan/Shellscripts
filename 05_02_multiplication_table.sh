if [ $# -ne 2 ]; then
	echo "Usage $0 <source_num> <limit>"
	exit 1
fi

for ((i=1; i<=$2; i++)); do
	echo "$(($1 * $i))"
done
 
