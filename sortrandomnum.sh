#!/bin/bash -x
declare -a array
n=10
for (( i=0; i<$n; i++ ))
do
   array[$i]=$((((RANDOM%888))+100))
done
echo "${array[*]}"
#length=$n
temp=0
for (( i=0; i<$n; i++ ))
do
	for (( j=i+1; j<$n-1; j++ ))
	do
		if [[ ${arr[i]} -gt ${arr[j]} ]]
		then
			temp=${arr[i]}
			arr[i]=${arr[j]}
			arr[j]=$temp
		fi
	done
done
echo " "
echo "Elements of array sorted are:"
for (( i=0; i<$n; i++ ))
do
	echo ${arr[i]}
done
