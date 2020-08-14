#!/bin/bash

#initializing the increment variable for all arrays.
a=0
b=0
c=0
d=0
e=0
f=0
g=0
h=0
j=0
k=0
l=0
m=0

#declaring array to store the random birth months and then to store them in its respective month array.
declare -A birthmonth
declare -A jan
declare -A feb
declare -A mar
declare -A apr
declare -A may
declare -A jun
declare -A jul
declare -A aug
declare -A sep
declare -A oct
declare -A nov
declare -A dec

#generating random birth months of 50 individuals
for((i=0; i<50; i++))
        do
                birthmonth["$i"]=$(((RANDOM%12)+1));
        done

#sorting them into its equivalent month array.
echo "The random birth month of 50 Individuals are: "${birthmonth[@]};

for (( i=0; i<${#birthmonth[@]}; i++ ))
do
        if [ ${birthmonth[$i]} == 1 ]
        then
                jan[$a+=1]=${!birthmonth[i]}
        elif [ ${birthmonth[$i]} -eq 2 ]
        then
                feb[b++]=${!birthmonth[$i]}
        elif [ ${birthmonth[$i]} -eq 3 ]
        then
                mar[c++]=${!birthmonth[$i]}
        elif [ ${birthmonth[$i]} -eq 4 ]
        then
                apr[d++]=${!birthmonth[$i]}
        elif [ ${birthmonth[$i]} -eq 5 ]
        then
                may[e++]=${!birthmonth[$i]}
        elif [ ${birthmonth[$i]} -eq 6 ]
        then
                jun[f++]=${!birthmonth[$i]}
        elif [ ${birthmonth[$i]} -eq 7 ]
        then
                jul[g++]=${!birthmonth[$i]}
        elif [ ${birthmonth[$i]} -eq 8 ]
        then
                aug[h++]=${!birthmonth[$i]}
        elif [ ${birthmonth[$i]} -eq 9 ]
        then
                sep[j++]=${!birthmonth[$i]}
        elif [ ${birthmonth[$i]} -eq 10 ]
        then
                oct[k++]=${!birthmonth[$i]}
        elif [ ${birthmonth[$i]} -eq 11 ]
        then
                nov[l++]=${!birthmonth[$i]}
        else
                dec[m++]=${!birthmonth[$i]}
        fi

done

#Displaying the individuals who have same birth month.

echo ${jan[@]} "have their birthday in January month."
echo ${feb[@]} "have their birthday in February month."
echo ${mar[@]} "have their birthday in March month."
echo ${apr[@]} "have their birthday in April month."
echo ${may[@]} "have their birthday in May month."
echo ${jun[@]} "have their birthday in June month."
echo ${jul[@]} "have their birthday in July month."
echo ${aug[@]} "have their birthday in August month."
echo ${sep[@]} "have their birthday in September month."
echo ${oct[@]} "have their birthday in October month."
echo ${nov[@]} "have their birthday in November month."
echo ${dec[@]} "have their birthday in December month."
