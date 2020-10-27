#!/usr/bin/bash
read -p "Enter filename to read : " file
#  -r is used to trim off any '/' in the sentence read from file
if [ -f $file ]
    then
        echo "Reading file...."
        while read -r line; do
            echo "$line"
        done < "$file"
    else
        echo "no such file"
fi
