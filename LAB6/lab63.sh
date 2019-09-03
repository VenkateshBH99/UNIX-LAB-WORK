#!/bin/bash/
sort ispell.dict > ispell.dict &
echo "background process created"
echo `jobs`
echo "No of background process running before killing:"
jobs | wc -l
echo "Terminating....."
kill $?
#echo "background process killed"
#jobs
#echo "No of background process running after killing:"
#jobs | wc -l