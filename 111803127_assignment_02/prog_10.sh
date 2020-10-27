#!/bin/bash
read -p 'Enter Directory Name to check existence :' dir
if [ -d $dir ]
    then
        echo "Directory Exists"
    else
        echo "Creating Directory"
        mkdir $dir
fi