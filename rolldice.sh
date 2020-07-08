#!/bin/bash -x
for i in {1..5}
do
	echo "You rolled a..."
	echo $(($RANDOM % 6 + 1))
done
