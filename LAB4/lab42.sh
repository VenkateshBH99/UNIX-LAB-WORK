#!/bin/bash
echo "Enter the string1:"
read st1
echo "Enter the string2:"
read st2
echo "$st1" >> "fil"
echo "$st2" >> "fil1"
echo -e "1.Compare two files\n2.Find the common element in the file\n3.List of unique element in the file1
4.List of unique element in the file2\n5.How can we make these two file identical"
echo -n "Enter ur choice:"
read ch
case $ch in
    1) 
      echo "Comparision of two file is:" 
      cmp fil fil1;;
    
    2)  
        echo "Common elements are:"
        sort -o fil fil2
        sort -o fil1 fil3
        comm -12 fil2 fil3 ;;
    3)  
        echo "unique elements in file1 are:"
        sort -o fil fil2
        sort -o fil1 fil3
        comm -23 fil2 fil3 ;;
    4) 
        echo "unique elements in file2 are:"
       sort -o fil fil2
        sort -o fil1 fil3
        comm -13 fil2 fil3;;
    5)
        echo " making two Files identical:"
       diff fil fil1 ;;
    *)
       echo "invalid choice"

esac
