#! bin/sh
echo "enter name of database:"
read db
while :; do

echo -e "1.Add  \n2.Deleting \n3.Find \n4.EXIT"
echo "enter ur choice"
read choice

case "$choice" in
1)
  echo "enter roll no of student:"
  read rollno
  echo "enter name:"
  read name
  echo "enter his semester:"
  read sem 
  echo "enter marks in three subjects:"
  read m1
  read m2
  read m3
  echo "$rollno   $name    $sem     $m1     $m2    	$m3">>$db;;

2)

  echo "enter roll no of student:"
  read rollno
  #set -a
  sed '/$rollno/d' $db>$db
  #grep  "$rollno" $db
  echo "record deleted"
  ;;
  
3)

   echo "enter rollno of student" 
   read rollno
   #cat $db
   grep  "$rollno" $db;;


4)
   break;;

esac

done



  




