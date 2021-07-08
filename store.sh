#!/bin/bash -x
declare -A sort
read a
read b
read c
sort[0]="$(($a+$b*$c))"
sort[1]="$(($a*$b+$c))"
sort[2]="$(($c+$a/$b))"
sort[3]="$(($a%$b+$c))"
echo ${sort[@]}
