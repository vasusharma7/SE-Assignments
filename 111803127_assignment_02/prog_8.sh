#!/bin/bash
read -p 'Enter Marks :' marks
case $marks in

   10[0-9]* | 8[0-9]* | 9[0-9]* )    
    echo "Result: Division 1"
    ;;

  6[0-9]* | 7[0-9]* )
    echo "Result: Division 2"
    ;;

  4[0-9]* | 5[0-9]*)
    echo "Result: Division 3"
    ;;

  *)
    echo "Result: Fail"
    ;;
esac


