#!/bin/bash
echo Files starting with vowel:
ls -p | grep -v / | grep '^[aeiouAEIOU]'
echo
echo "blank lines count in file c.txt= $(grep -c "^$" c.txt)"