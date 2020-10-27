#!/bin/bash
read -p 'Enter cost price :' cp
read -p 'Enter selling price :' sp
if [ $sp -gt $cp ]
    then
        echo "It is Profit of amount: " `expr $sp - $cp`
    elif [ $cp -gt $sp ]
        then
            echo "It is Loss of amount: " `expr $cp - $sp`
    else
        echo "No Profit or Loss" 
fi
