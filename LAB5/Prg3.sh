#!/bin/bash
echo Files starting with vowel:
ls -p | grep -v / | grep '^[aeiouAEIOU]'
echo
echo Number of blank lines in C.txt file
grep ^$ C.txt | wc -l