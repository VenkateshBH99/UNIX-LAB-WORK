#!/bin/bash

echo -e "1.Decimal to Binary \n 2.Binary to Decimal \n 3.Binary to Hexadecimal \n 4.Hexadecimal to Binary"
echo "Enter ur choice:"
read ch
case $ch in
	1) echo -n "Enter Decimal number: "
          read d
          b=$(echo "ibase=10;obase=2; $d" |bc)
          echo "Binary number: $b";;
    2) echo -n "Enter Binary number: "
          read b
          d=$(echo "ibase=2;obase=10; $b" |bc)
          echo "Decimal number: $d";;
    3)
      echo -n "Enter Binary number: "
          read b
          h=$(echo "ibase=2;obase=16; $b" |bc)
          echo "Hexadecimal number: $h";;
    4) echo -n "Enter Hexadecimal number: "
          read h
          b=$(echo "ibase=16;obase=2; $h" |bc)
          echo "Binary number: $b";;
    *) echo "invalid choice!!"
esac