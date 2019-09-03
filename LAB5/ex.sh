clear
i="y"
echo "Enter name of database "
read db
while [ $i = "y" ]
do
clear
echo "1.View the Data Base "
echo "2.View Specific Records "
echo "3.Add Records "
echo "4.Delete Records "
echo "5.Exit "
echo "Enter your choice "
read ch
 case $ch in
        1)cat $db;;
        2)echo "Enter id "
          read id
            grep -i "$id" $db;;
        3)echo "Enter new std id "
          iread tid
          echo "Enter new name:"
          read tnm
          echo "Enter designation "
          read des
          echo "Enter college name"
          read college
          echo "$tid    $tnm    $des    $college">>$db;;
        4)echo "Enter Id"
          read id
        # set -a
    #    sed '/$id/d' $db>dbs1
        grep -v "$id" $db >dbs1    
          echo "Record is deleted"
         cat dbs1;;           
        5)exit;;
        *)echo "Invalid choice ";;
 esac
echo "Do u want to continue ?"
read i
if [ $i != "y" ]
then
    exit
fi
done         