#!/bin/bash
# This script counts how many files and directories are in a given folder
if [ -z "$1" ]; then
echo "Please give a directory name"
echo "For example $0 <directory>"
exit 1
fi

# Check if the folder actually exists
if [ ! -d "$1" ]; then
echo "Directory does not exist"
exit 1
fi

# Count the number of files (not folders) in the given directory
file_count=$(find "$1" -maxdepth 1 -type f | wc -l)
# Count the number of directories (including the one we gave) and subtract 1
dir_count=$(find "$1" -maxdepth 1 -type d | wc -l)
dir_count=$((dir_count - 1))
# Show the results
echo "In directory '$1':"
echo "Number of files: $file_count"
echo "Number of directories: $dir_count"

