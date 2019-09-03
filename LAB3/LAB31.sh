#!/bin/bash
echo "Enter the String:"
read Str

if [ -d "${Str}" ]; then
	echo "its a directory"
	ls "${Str}"
elif test -e ${Str}; then
	cat "${Str}"

else
  echo "invald input"
 fi	
