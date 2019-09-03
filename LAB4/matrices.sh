#!/bin/bash
echo "Enter rows and columns:"
read n
read m
echo "Enter First martix:"
for (( i = 0; i < n; i++ )); do
	for (( j = 0; j < m; j++ )); do
	
		read a[$(($m*$i+$j))]
	done
	#statements
done
echo "Enter Second martix:"
for (( i = 0; i < n; i++ )); do
	for (( j = 0; j < m; j++ )); do
		read b[$(($m*$i+$j))]
	done
	#statements
done


echo "The Sum is:"
for (( i = 0; i < n; i++ )); do
	for (( j = 0; j < m; j++ )); do
		#statements

		c[$(($m*$i+$j))]=$(echo "${a[$(($m*$i+$j))]}+${b[$(($m*$i+$j))]}" |bc)
		echo -ne "${c[$(($m*$i+$j))]}\t"
	done
	echo -e "\n"
	#statements
done