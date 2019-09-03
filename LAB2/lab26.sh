#!/bin/bash
file=`ls`
fl=0
dr=0
for i in $file
do
	if [ -f $i ]
	then
		fl=`expr $fl + 1`
	elif [ -d $i ]
    then
		dr=`expr $dr + 1`
	fi
done
echo The number of  files is $fl
echo The number of directory is $dr
if [ $fl -gt 0 ]
	then
		echo Files:
		for i in $file
		do
			if [ -f $i ]
			then
				echo $i
				fi
			done
fi
if [ $dr -gt 0 ]; then
	echo Directory:
	for i in $file
	do
		if [ -d $i ]
		then
			echo $i
			fi
		done
fi



