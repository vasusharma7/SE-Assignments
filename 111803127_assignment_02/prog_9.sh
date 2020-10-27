#!/bin/bash
read -p 'Enter File Name to check existence :' file
if [ -f $file ]
    then
        echo "File Exists"
        echo "hello world" >> $file
    else
        echo "Creating file"
        touch $file
        echo "hello world" >> $file
fi