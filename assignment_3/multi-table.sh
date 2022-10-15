#!/bin/bash
if [ -z $1 -o -z $2 ];
then
	echo "Invalid Input"
	exit 0
elif [ $1 -le 0 -o  $2 -le 0 ];
then
	echo "Input must be greater than 0"
	exit 0
fi

for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		printf  "${i}*${j}=`expr $i \* $j` \t"
	done
	printf "\n"
done

exit 0
