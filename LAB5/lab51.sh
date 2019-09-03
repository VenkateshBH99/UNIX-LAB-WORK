a=`date +"%H"`
if [[ "$a" -gt 20 ]]; then
	echo "Good Night"
elif [[ "$a" -gt 18 ]]; then
	echo "Good Evening"
elif [[ "$a" -gt 12 ]]; then
	echo "Good AfterNoon"
elif [[ "$a" -gt 0 ]]; then
	echo "Good Morning"
fi