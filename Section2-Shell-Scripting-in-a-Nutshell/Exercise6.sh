# Exercise 6:

# Write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or other type of file.
# Also perform an ls command against the file or directory with the long listing option.


#!/bin/bash

echo "What's the filename or directory???"

read USER_RESPONSE

if [ -f "$USER_RESPONSE" ]; then
    echo "This is a file!!!"
elif [ -d "$USER_RESPONSE" ]; then
    echo "This is a directory!!!"
else
    echo "This is not a directory and not a file!!!"
fi

ls -l "$USER_RESPONSE"
