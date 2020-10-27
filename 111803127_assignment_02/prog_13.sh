#!/bin/bash
read -p 'Enter a string :' str
rev=$(echo $str | rev)
if [ $str == $rev ]
    then
        echo "String is palindrome"
    else
        echo "String is not palindrome"
fi