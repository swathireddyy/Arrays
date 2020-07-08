#!/bin/bash -x
declare -a array
echo "Enter the lower range:"
read num1
echo "Enter the upper range:"
read num2
n=$(($num1+$num2))
function printRepeating(){
for (( i=0; i<$n ; i++ ))
do
	for (( j=i+1; j<$n ; j++ ))
	do
		if [[ ${array[i]} -eq ${array[j]} ]]
		then
			echo "${array[i]}"
		fi
	done
done
}
printRepeating
