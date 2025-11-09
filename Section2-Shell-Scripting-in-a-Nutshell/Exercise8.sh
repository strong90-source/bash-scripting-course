# Modify the previous script to accept an unlimited number of files and directories as arguments.
# Hint: You'll want to use a special variable.



#!/bin/bash

USER_RESPONSE="$@"

for ITEM in "$@"

do

if [ -f "$ITEM" ]; then

    echo "$ITEM is a file"

elif [ -d "$ITEM" ]; then

    echo "$ITEM is a directory"

else

    echo "$ITEM is some other type or doesn’t exist"
fi

ls -l "$ITEM"

done
