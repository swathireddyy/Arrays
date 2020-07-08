#!/bin/bash -x
declare -A myvar
echo "Enter any number a:"
read a
echo "Enter any number b:"
read b
echo "Enter any number c:"
read c
myvar[1]=$(($a+$b*$c))
myvar[2]=$(($a*$b+$c))
myvar[3]=$(($c+$a/$b))
myvar[4]=$(($a%$b+$c))
echo ${myvar[@]}
echo "The key values are:" ${!myvar[@]}
for (( i=0 ; i<${#myvar[@]}; i++ ))
do
    for (( j=0 ; j<${#myvar[@]}; j++ ))
    do
      if [[ ${myvar[$j]} -lt  ${myvar[$i]} ]]
      then
        tmp=${myvar[$i]}
        myvar[$i]=${myvar[$j]}
        myvar[$j]=${tmp}
      fi
    done
done

for n in "${myvar[@]}"
do
    echo "$n"
done
for (( i=0 ; i<${#myvar[@]}; i++ ))
do
    for (( j=0 ; j<${#myvar[@]}; j++ ))
    do
      if [[ ${myvar[$j]} -gt  ${myvar[$i]} ]]
      then
        tmp=${myvar[$i]}
        myvar[$i]=${myvar[$j]}
        myvar[$j]=${tmp}
      fi
    done
done

for n in "${myvar[@]}"
do
    echo "$n"
done

