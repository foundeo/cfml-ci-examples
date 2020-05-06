#!/bin/sh

#run a simple curl test of our API
echo "\nRUNNING SIMPLE CFML TEST SUITE:\n"

http_code=$(curl --verbose -s -o /tmp/cfm-result.txt -w '%{http_code}' "http://127.0.0.1:8855/tests/cfm/test.cfm";)

cat /tmp/cfm-result.txt

if [ "$http_code" -eq "200" ]; then
    echo "\nPASS: HTTP Status Code was 200"
else 
    echo "\nFAIL: Status Code: $http_code"
    exit 1
fi