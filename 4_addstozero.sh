#!/bin/bash

#declare an self defined arrray
declare -a array=(2 -2 1 0 1 4 -3 -2 1 3 -1)
echo "The original array is: "${array[@]}

find_triplets(){
        #echo $@ ;
        #sort the array
        IFS=$'\n' sorted=($(sort <<<"${array[*]}"))
        unset IFS
        echo "The sorted array is :" ${sorted[@]}

        #compare 1st ,2nd and 3rd variables and hence increment each until sum=0 is found
        for ((i=0; i<${#sorted[@]}-2; i++))
        do
                for ((j=$((i+1)); j<${#sorted[@]}-1; j++))
                do
                        for ((k=$((j+1)); k<${#sorted[@]}; k++))
                        do
                                sum=$(( ${sorted[i]} + ${sorted[j]} + ${sorted[k]} ));
                                #sum=$(({sorted[i]}+{sorted[j]}+s{sorted[k]}));
                                if [ $sum -eq 0 ]
                                then
                                        #Store the found triplets in a new array
                                        new_array=(${sorted[i]} ${sorted[j]} ${sorted[k]})
                                fi
                        done
                done
                echo "Triplets whose sum is 0 :"${new_array[@]}
        done
}


#pass the array to the function
find_triplets ${array[@]}
