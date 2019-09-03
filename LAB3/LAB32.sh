echo "Enter the first file name"
read a
echo "Enter the second file name"
read b
if test -f ${a}; then
	echo "${a} exits"
	if test -f ${b}; then
		echo "${b} exits"
		cat ${a}>>${b}
		echo "${b} is:"
		cat "${b}"
	else
		echo "${b} does not exits"
	fi
else
	echo "${a} does not exits"
fi
