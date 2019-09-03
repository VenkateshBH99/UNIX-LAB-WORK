#!/bin/sh
echo "enter n"
read n
sum=0
for((i=1;i<=n;i++))
do
  
  sum=$(echo "$sum+$i" |bc)
  
done
echo "sum=$sum"
