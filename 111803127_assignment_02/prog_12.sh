#!/bin/bash
echo 'The leap years after 2000 are - '
count=0
year=2000
while [ $count -lt 10 ] ; do
    if [[ `expr $year % 4` -eq 0 ]]
        then
            if [[ `expr $year % 100` -eq 0 &&  `expr $year % 400` != 0 ]]
                then
                    year=`echo $year+1 | bc`
                    continue
            else
                echo "$year"
                count=`echo $count+1 | bc`
            fi
    fi
    year=`echo $year+1 | bc`
done

