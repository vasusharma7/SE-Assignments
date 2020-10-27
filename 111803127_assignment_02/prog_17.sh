#!/bin/bash
arr=(cat dog bear hello elephant hello tiger hello horse)
file="17.txt"
if [ ! -f $file ]
    then
        touch $file
fi  
for i in ${arr[*]}
do
    echo $i >> $file
done
echo "Showing file without 'hello' using grep"
cat $file | grep -vE "(hello)"

