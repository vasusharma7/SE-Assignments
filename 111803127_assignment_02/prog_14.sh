#!/bin/bash
read -p "Enter number to find factorial: " num
fact=1
while [[ $num -gt 0 ]]; 
    do
        fact=`expr "$num"*"$fact" | bc`
        num=`expr "$num"-1 | bc`    
    done
echo "Factorial - $fact"