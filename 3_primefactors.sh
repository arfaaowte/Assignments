#!/bin/bash

#input an positive integer for factorization from user
read -p "Enter an integer : " input
        if [ $input -lt 1 ];then
                echo "not allowed!"
        exit 1
        fi

#declare an array to store factors
declare -a primefactors
i=2
count=0
flag=0
k=0

#program to find factors
for ((i;i<$input;));do

  if [ `expr $input % $i` -eq 0 ];then
      factor=$i

  for ((j=2;j<=`expr $factor / 2`;));do
      flag=0
      if [ `expr $factor % $j` -eq 0 ];then
      flag=1
      break
      fi
      j=`expr $j + 1`
  done

#Only prime factors should be considered
if [ $flag -eq 0 ];then
        primefactors[k]=$factor
        k+=1;
        count=1;
  fi
  fi
  i=`expr $i + 1`
  done

echo "The factors are: " ${primefactors[@]}

  if [ $count -eq 0 ];then
  echo "no prime factors found except 1 and $input"
  fi
