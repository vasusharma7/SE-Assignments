#!/bin/bash
read -p 'Enter Marks :' marks
if [ $marks -gt 80 ]
    then
        echo "Result: Division 1"
    elif [ $marks -gt 60 ]
        then
            echo "Result: Division 2"
    elif [ $marks -gt 40 ]
        then
            echo "Result: Division 3"
    else
        echo "Result: Fail"
fi


