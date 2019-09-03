echo -e "Enter ur Choice \n 1.Strings are non empty \n 2.Strings are same \n 3.Strings are palidrome "
read Choice
case "$Choice" in
1)
   echo "enter the String:"
   read Str
   if [ -z "$Str" ]
   	then
   	  echo "String is empty"
   else
   	 echo "String is non-empty"
   	fi;;
2)
   echo "enter the first String"
   read Str1
   echo "enter the Second String"
   read Str2
   if [ "$Str1"=="$Str2" ]
   	then
   	  echo "Strings are same"
    else
    	echo "Strings are not same"
    fi;;
 3)
   echo "enter the String"
   read Str
   if [ $(rev<<<"$Str") == "$Str" ]
   	then
   	echo "entered String is palidrome"
   else
   	echo "its not palidrome"
   fi;;
 *) echo "invalid choice";;
esac