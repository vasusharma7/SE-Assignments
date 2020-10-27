#!/bin/bash
read -p 'Enter name of file 1 :' file1
read -p 'Enter name of file 2 :' file2

# - is used to work silenty and to supress the output

# either of the methods work
#if diff $file1 $file2 > /dev/null
if [ "$(cmp -s "$file1" "$file2"; echo $? )" -eq 0 ]
    then
        echo "files have same content"
    else
        echo "files have different contents"
fi

