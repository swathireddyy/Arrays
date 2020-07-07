#!/bin/bash -x
declare -a array
n=10
for (( i=0; i<$n; i++ ))
do
   array[$i]=$((((RANDOM%888))+100))
   #echo $array
done
echo "${array[*]}"
