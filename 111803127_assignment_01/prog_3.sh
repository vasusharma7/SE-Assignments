#!/bin/bash
read -p 'Enter Number :' num
i=2

if [[ `expr $num % 2` -eq 0 ]]
    then
        echo "Even Number"
    else
        echo "Odd Number"
fi