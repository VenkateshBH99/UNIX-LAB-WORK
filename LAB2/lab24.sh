#!/bin/sh
echo "enter 10 numbers:"
for((i=0;i<10;i++))
do
 read a[i]
done
p=0
n=0
z=0
for((i=0;i<10;i++))
do
   if [ ${a[i]} -gt 0 ];then
     p=$(echo "$p+1" |bc)
   elif [ ${a[i]} -lt 0 ];then
     n=$(echo "$n+1" |bc)
   else
     z=$(echo "$z+1" |bc)
   fi
done
echo "number of positive integers are:$p integers"
echo "number of negative integers are:$n integers"
echo "number of zeros integers are:$z integers"
for((i=0;i<9;i++))
do

 for((j=i+1;j<10;j++))
 do
  if [ ${a[i]} -gt ${a[j]} ];then
    temp=${a[i]}
    a[i]=${a[j]}
    a[j]=$temp
 fi
 done
done
echo "Increasing order:"
for((i=0;i<10;i++))
do
echo "${a[i]}"
done
