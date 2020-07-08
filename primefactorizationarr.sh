#!/bin/bash -x
echo -n "Enter any number to print prime factors:"
read num
declare -a array
function primeFactor {
   for (( i=2; i<=num; i++ ))
   do
      if [ $((num%i)) -eq 0 ]
      then
         isPrime=1
         for (( j=2; j<=i/2; j++ ))
         do
            if [ $((i%j)) -eq 0 ]
            then
               isPrime=0
               break;
            fi
         done
         if [ $isPrime -eq 1 ]
         then
            array[i]=$i
         fi
      fi
   done
echo "The prime factors are:" "${array[*]}"

}
primeFactor
