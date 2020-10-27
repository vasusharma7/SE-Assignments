#!/bin/bash
read -p "Enter the height of pyramid:" num
i=0
j=0
while [[ $i -lt $num ]]; 
    do
        j=`echo $num-$i-1 | bc`      
        # echo $j  
        k=0
        while [[ $k -lt $j ]]; 
            do
                printf " "
                k=`echo $k+1 | bc`
            done

        j=-1
        while [[ $j -lt $i ]]; 
            do
                printf `expr $j+2 | bc`
                printf " "
                j=`echo $j+1 | bc`
            done
        echo ""

        i=`echo $i+1 | bc`
    done
