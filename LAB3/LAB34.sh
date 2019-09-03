echo -n "Enter the marks scored in UNIX out of 100:"
read u
echo -n "Enter the marks scored in JAVA out of 100:"
read j 
echo -n "Enter the marks scored in DS out of 100:"
read d
if [ $u -le 100 -a $u -ge 0 -a $j -le 100 -a $j -ge 0 -a $d -le 100 -a $d -ge 0 ];then
sum=$(echo "$u+$j+$d" |bc)
avg=$(echo "$sum/3" |bc)
if [ "${avg}" -le 100 -a "${avg}" -gt 70 ]; then
	echo "Distinction"
elif [ "${avg}" -gt 60 ]; then
	
	echo "First class"
elif [ "${avg}" -gt 50 ]; then
	echo "Second class"
elif [ "${avg}" -gt 40 ]; then
	echo "Third class"
elif [ "${avg}" -ge 0 ]; then
	echo "FAIL"
else
	echo "INVAILD INPUT (enter b/w 1-100)"
fi
else
  echo "INVALID INPUT :Enter the marks between 1 to 100"
fi
