#!/bin/bash

for (( i=0; i <= 11; i++ ))
do
        rand_num=$((RANDOM%(999-100+1)+100));
        array[i]=$rand_num;
done

echo "The random 10 numbers are :"${array[*]}

second_greatest=$(printf '%s\n' "${array[@]}" | sort -nu | tail -2 |head -1)
echo "Second Largest :"$second_greatest

second_smallest=$(printf '%s\n' "${array[@]}" | sort -nu | head -2 |tail -1)
echo "Second Smallest :"$second_smallest
