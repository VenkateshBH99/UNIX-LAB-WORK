#!/bin/sh
echo "enter five numbers"
for((i=0;i<5;i++))
do
 read a[i]
done
max=${a[0]}
min=${a[0]}
for((i=1;i<5;i++))
do
if [ ${a[i]} -gt $max ];then
  max=${a[i]}
 fi
if [ ${a[i]} -lt $min ];then
  min=${a[i]}
 fi
done
echo "MAX=$max MIN=$min"
for((i=0;i<4;i++))
do

 for((j=i+1;j<5;j++))
 do
 if [ ${a[i]} -gt ${a[j]} ];then
 temp=${a[i]}
 a[i]=${a[j]}
 a[j]=$temp
 fi
 done
done
for((i=0;i<4;i++))
do
count=1
 for((j=i+1;j<5;j++))
 do
 if [ ${a[i]} -eq ${a[j]} ];then
 count=$(echo "$count+1" |bc)
 i=$j
 fi
 done
if [ $count -gt 1 ];then
t=${a[i]}
echo "$t repeated $count times"
fi
done