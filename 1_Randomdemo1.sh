#!/bin/bash

#generate 10 random numbers and store in array
for((i=0;i<11;i++))
do
        rand_num=$((RANDOM%(999-100+1)+100));
        array[i]=$rand_num;
done

echo "The random 10 numbers are :"${array[*]}

#find second largest number in array by comparing
first=${array[0]}
second=${array[0]}

for i in ${array[@]}
do
        if(( $first < $i))
        then
                second=$first;
                first=$i;
        else
                if(( $i > $second && $i != $first ))
                then
                        second=$i;
                fi
        fi
done

echo "Second Largest number is: "$second


#Find second smallest number in array by comparing
for i in ${array[@]}
do
        if(( $first > $i))
        then
                second=$first;
                first=$i;
        else
                if(( $i < $second && $i != $first ))
                then
                        second=$i;
                fi
        fi
done

echo "Second Smallest number is: "$second
