#!/bin/bash
echo "Enter filename"
read filename
#touch file.txt
sort "$filename" > file.txt&
echo "No. of background processes running...."
jobs | wc -l