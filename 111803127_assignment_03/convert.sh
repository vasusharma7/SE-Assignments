#!/bin/bash

csvfile="input.csv"
vcffile="output.vcf"
if [ ! -f $csvfile ]
    then
        echo "No Input File Found"
fi
if [ -f $vcffile ]
    then
        rm output.vcf
    else 
        touch output.vcf
    fi
count=0
while IFS= read -r line
    do
        count=`expr $count + 1`
        if [ $count -eq 1 ]
            then
                continue
        fi
        IFS=',' read -ra values <<< "$line"
        IFS=' ' read -ra name <<< ${values[0]}
        echo "BEGIN:VCARD" >> $vcffile
        echo "VERSION:3.0" >> $vcffile
        printf "N:;" >> $vcffile;
        for i in `printf '%s\n' "${name[@]}"|tac`
            do 
                printf ${i^^}';' >> $vcffile;
            done
        echo ";;" >> $vcffile
        echo "FN:"${name[0]^^} ${name[1]^^}  >> $vcffile
        echo "ORG:"${values[3]^^} >> $vcffile
        echo "TEL;TYPE="${values[2]^^}":"${values[1]^^} >> $vcffile
        echo "END:VCARD" >> $vcffile

done < "$csvfile"

#cat output.vcf
