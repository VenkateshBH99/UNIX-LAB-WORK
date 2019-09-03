#!/bin/sh
echo "enter n digits"
read n
sum=0
i=1
for((i=1;i<=n;i++))
do
  read a
  sum=$(echo "$sum+$a" |bc)
  
done
avg=$(echo "$sum/$n" |bc)
echo "average=$avg"

