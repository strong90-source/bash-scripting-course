# Exercise 7:

# Modify the previous script so that it accepts the file or directory name as an argument instead of prompting the user to enter it.


#!/bin/bash

USER_RESPONSE="$1"


if [ -f "$USER_RESPONSE" ]; then
    echo "This is a file!!!"
elif [ -d "$USER_RESPONSE" ]; then
    echo "This is a directory!!!"
else
    echo "This is not a directory and not a file!!!"
fi


ls -l "$USER_RESPONSE"
