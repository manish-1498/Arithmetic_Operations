#!/bin/bash -x
read a
read b
read c
x=$(($a+$b*$c))
y=$(($a*$b+$c))
z=$(($c+$a/$b))
w=$(($a%$b+$c))
