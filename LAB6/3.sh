echo "Running a process in background:"
ls &

echo ""
echo "job no :"
a=$!
echo "$a"


echo ""
echo "Job status :"
jobs

echo ""
echo "killing  job $a:"
kill -9 $!


echo ""
echo "job status"
jobs
