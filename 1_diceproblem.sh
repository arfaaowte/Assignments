#!/bin/bash

i=0;
one=0;
two=0;
three=0;
four=0;
five=0;
six=0;

#array to store all random dice number
declare -A dicenumber

#until any number is not coming 10times continue getting dice number
while [ $one -ne 10 -a $two -ne 10 -a $three -ne 10 -a $four -ne 10 -a $five -ne 10 -a $six -ne 10 ]
do
        dicenumber["$i"]=$(((RANDOM%6)+1))

        #switch case to check the dice number and count its occurence
        case ${dicenumber[$i]} in
                1)
                        one=$((one+1));
                        ;;
                2)
                        two=$((two+1));
                        ;;
                3)
                        three=$((three+1));
                        ;;
                4)
                        four=$((four+1));
                        ;;
                5)
                        five=$((five+1));
                        ;;
                6)
                        six=$((six+1));
                        ;;
                *)
                        echo "Not a dice number";
        esac
        i=$((i+1));
done

#store the count in array countarray
countarray=( $one $two $three $four $five $six )
echo "The random dice number are :" ${dicenumber[@]};

echo "The number 1 has occured : $one times."
echo "The number 2 has occured : $two times."
echo "The number 3 has occured : $three times."
echo "The number 4 has occured : $four times."
echo "The number 5 has occured : $five times."
echo "The number 6 has occured : $six times."
#sort the array to find min and max occurence of a number
#IFS=$'\n' sorted=($(sort <<<"${countarray[*]}")); unset IFS
#printf "[%s]\n" "${sorted[@]}"
