#!/bin/sh
echo "enter two numbers"
read a
read b
echo "enter the operator add,mul,div,sub,mod"
read op
case $op in
+)
    c=$(echo "$a+$b" |bc)
     echo "$a+$b=$c";;
-)
    c=$(echo "$a-$b" |bc)
   echo "$a-$b=$c";;
/)
    if [ $b -eq 0 ]
   then
      echo "error:divide by zero"
    else
      c=$(echo "$a/$b" |bc)
      echo "$a/$b=$c"
     fi;;
'*')
     c=$(echo "$a*$b" |bc)
     echo "$a*$b=$c";;
*)   echo "invalid operator"
esac
