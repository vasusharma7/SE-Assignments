#!/bin/bash
read -p 'Enter 3 Numbers (separated by space):' num1 num2 num3

if [[ $num1 -ge $num2 ]]
    then
        if [[ $num1 -ge $num3 ]]
            then    
                echo $num1 "is greatest of all"
        else
            echo $num3 "is greatest of all"
        fi
    elif [[ $num1 -le $num2 ]]
        then
            if [[ $num2 -ge $num3 ]]
                then    
                    echo $num2 "is greatest of all"
            else
                echo $num3 "is greatest of all"
            fi
fi