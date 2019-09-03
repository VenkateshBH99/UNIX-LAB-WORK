#!/bin/bash
echo "easdfedad" > test
echo "ascasdfcasfaf" >> test
echo "asdcfsfsefsefse" >> test
echo "yjtyjtyjy" >> test
echo "Here is the file before adding the HTML tags"
cat test
echo "Adding the <HTML> tag to the first line of the file test"
sed -i '1i <HTML>' test
echo "Adding the <\HTML> tag to the last line of the file test"
sed -i '$s/$/\n<\\HTML>/' test
echo "Done with the adding of the tags to the file named test"
echo  "Here is the new file"
cat test

sed '1,3s/|/:/g' emp.txt 