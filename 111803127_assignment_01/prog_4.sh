#!/bin/bash
read -p 'Enter radius of circle :' rad
if [ $rad -lt 0 ]
    then
        echo "Radius cannot be negative"
        exit
fi
circum=`echo "2 * $rad * 3.142" | bc`
area=`echo "($rad ^ 2)*3.142" | bc`
echo "Circumference is : $circum units" 
echo "Area is : $area sq. units"

