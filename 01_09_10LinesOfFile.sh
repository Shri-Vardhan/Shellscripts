read -p "Enter file name " file_name
if [ -e "$file_name" ]; then
head -n 10 "$file_name"

else
echo "File does not exist"
fi
