#!/bin/bash -x
declare -A sort
read a
read b
read c
sort[0]=$(($a+$b*$c))
sort[1]=$(($a*$b+$c))
sort[2]=$(($c+$a/$b))
sort[3]=$(($a%$b+$c))
for (( i=0; i<4; i++ )) #for descending
do
for (( j=0; j<4; j++ ))
do
if [ ${sort[$j]} -lt ${sort[$j+1]} ]
then
temp=${sort[$j]}
array[$j]=${sort[$j+1]}
array[$j+1]=$temp
fi
done
done
echo ${sort[@]}
for (( i=0; i<4; i++ )) #for ascending
do
for (( j=0; j<4; j++ ))
do
if [ ${sort[$j]} -gt ${sort[$j+1]} ]
then
temp=${sort[$j]}
sort[$j]=${sort[$j+1]}
sort[$j+1]=$temp
fi
done
done
echo ${sort[@]}
