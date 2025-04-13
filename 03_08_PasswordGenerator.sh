#!/bin/bash

# Check if one argument is passed
if [ $# -ne 1 ]; then
    echo "Usage: $0 <PasswordLength>"
    exit 1
fi

LENGTH=$1

# Generate the password
PASSWORD=$(< /dev/urandom tr -dc 'A-Za-z0-9@#$%&*+=_' | head -c "$LENGTH")

# Print the password
echo "Generated password: $PASSWORD"

