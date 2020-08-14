#!/bin/bash

#declare an array to store repeated digit integers
declare -a repeated_digit
n=0

#loop from 10 to 100 and rev the integer if same then required integer found.
for((i=10; i<=100; i++))
do
        rev=0
        temp_num=$i;
        while [ ! $temp_num -eq 0 ]
        do
                rev=$((rev*10+(temp_num%10))) ;
                temp_num=$((temp_num/10)) ;
        done
        if [ $i -eq $rev ]
                then
                        repeated_digit[n]=$i
                        n+=1
        fi

done

echo ${repeated_digit[@]}
