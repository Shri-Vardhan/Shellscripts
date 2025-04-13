read -p "Enter file name: " file_name

if [ -e "$file_name" ]; then
echo " $file_name exists"

else
echo "$file_name does not exist"

fi 
