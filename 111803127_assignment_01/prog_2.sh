#!/bin/bash
read -p 'Enter Integer :' num
i=2
flag=1

# Handling negative numbers
if [ $num -lt 0 ]
        then
            echo "Not a prime number"
            exit
    fi

# Handling trivial cases before hand
if [ $num -eq 1 -o $num -eq 0 ]
        then
            echo "Neither Prime nor composite"
            exit
    fi


while [ $i -lt $num ]
    do
        j=`expr $num % $i`
        if [[ j -eq 0 ]]
            then
                echo "Not a prime number"
                flag=0
                break
        fi
        i=`expr $i + 1`

    done
    if [ $flag -eq 1 ]
        then
            echo "Prime number"
    fi
