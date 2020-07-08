#!/bin/bash -x
declare -A myvar
echo "Enter any number a:"
read a
echo "Enter any number b:"
read b
echo "Enter any number c:"
read c
myvar[1]=$(($a+$b*$c))
echo ${myvar[1]}
