#!/bin/sh
echo "enter basic salary"
read b
dp=`expr ".5*b"|bc`
da=`expr ".35*($b+$dp)"|bc`
hra=`expr ".08*($b+$dp)"|bc`
ma=`expr ".03*($b+$dp)"|bc`
pf=`expr ".10*($b+$dp)"|bc`

salary=`expr "$b+$dp+$hra+$ma-$pf"|bc`
echo "salary:$salary"
