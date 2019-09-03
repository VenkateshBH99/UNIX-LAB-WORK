#!/bin/sh
echo "enter radius of the circle:"
read r
p=3.14
a=`expr "$p * $r * $r"|bc`
echo "area: $a"
