#!/bin/sh
echo -n "Enter the database name:"
read db 
while :; do
  echo -ne "1.adding\n2.Find\n3.delete\n4.Exit\nEnter ur choice:"
  read ch
  case $ch in
  	1) echo -n "1.Enter roll no:"
       read roll
       echo -n "2.Enter name:"
       read name
       echo -n "3.Enter semester:"
       read sem
       echo -n "4.marks in three subjects:"
       read m1
       read m2 
       read m3
       echo "$roll   |$name     |$sem    |$m1  |$m2  |$m3 ">>"$db"
       ;;
     3)
        echo -n "Enter roll no:"
        read roll 
        
        sed "/$roll/d" $db | tee $db

        echo "$roll deleted"
        ;;
     2) echo -n "Enter roll no:"
        read rl 
        grep "$rl" $db || echo "Not found"
        ;;
     4) break;;
     *) echo "Invalid input"
   esac
done