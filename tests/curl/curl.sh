#!/bin/sh

max_iterations=10
wait_seconds=6
http_endpoint="http://127.0.0.1:8855/up.cfm"

iterations=0
while true
do
	((iterations++))
	echo "Attempt $iterations"
	sleep $wait_seconds

	http_code=$(curl --verbose -s -o /tmp/result.txt -w '%{http_code}' "$http_endpoint";)

	if [ "$http_code" -eq 200 ]; then
		echo "Server Up"
		break
	fi

	if [ "$iterations" -ge "$max_iterations" ]; then
		echo "Loop Timeout"
		exit 1
	fi
done

#run a simple curl test of our API
answer=$(curl "http://127.0.0.1:8855/services/calc.cfc?method=add&x=5&y=3&returnformat=plain") 
if [ "$answer" -eq 8]; then
    echo "Answer was 8"
else 
    echo "Answer was not 8, it was: $answer"
    exit 1
fi