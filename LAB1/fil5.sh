#!/bin/sh
echo "enter length and bredth of rectangle"
read l
read b
p=$(echo "$l*$b" |bc)
echo "area: $p"

