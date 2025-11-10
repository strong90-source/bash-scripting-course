# Write a shell script that accepts a file or directory name as an argument. Have the script report if it is a regular file, a directory, or other type of file.
# If it is a regular file, exit with a 0 exit status. If it is a directory, exit with a 1 exit status. If it is some other type of file, exit with a 2 exit status.


#!/bin/bash

USER_RESPONSE="$@"

for ITEM in "$@"

do

if [ -f "$ITEM" ]; then
    echo "$ITEM is a regular file."
    exit 0

elif [ -d "$ITEM" ]; then

    echo "$ITEM is a directory"
    exit 1

else

    echo "$ITEM is a not a directory neither a file"
    exit 2
fi

done
