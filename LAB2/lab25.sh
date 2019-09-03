#!/bin/sh
for i in {1..999}
do
 temp=$i
 flag=0
 while [ $temp -ne 0 ]
 do
  d=$(echo "$temp%10" |bc)
  temp=$(echo "$temp/10"|bc)
  flag=$(echo "$flag+$d*$d*$d" |bc)
 done
if [ $flag -eq $i ];then
 echo "$i"
fi
done
