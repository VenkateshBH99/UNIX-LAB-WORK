#!/bin/bash
read a
read b
#d=$(echo "scale=2; $a -gt 0" |bc)
#echo "$d"
if [  $a -gt 0  -a  $b -gt 0  ];then
 if [  $a -gt $b  ];then
  s=$(echo "scale=2; $b/$a" |bc)
  echo "$b/$a=$s"
 else
  t=$(echo "scale=2; $a/$b" |bc)
  echo "$a/$b=$t"
 fi
else
 echo "enter only positive integers"
fi
