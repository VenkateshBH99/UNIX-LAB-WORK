#!/bin/sh
echo " enter principal amount , rate  ,time duration"
read p 
read r
read t
a=`expr "$p*$r*$t*.01"|bc`
 echo "simple intrest $a"
