#!/bin/bash
read -p 'Enter Operand1 : ' op1
read -p 'Enter One Operator (+,-,/,*) : ' op
read -p 'Enter Operand2 : ' op2
if [ "$op" == '+' ]
    then
        echo "Result: `echo "$op1 + $op2" | bc`"
    elif [ "$op" == '-' ]
        then
            echo "Result: `echo "$op1 - $op2" | bc`"
    elif [ "$op" == '/' ]
        then
            echo "Result: `echo "$op1 / $op2" | bc`"
    elif [ "$op" == '*' ]
        then
            echo "Result: `echo "$op1 * $op2" | bc`"
    else
        echo "Oops! wrong operator selected"
fi


