#!/bin/sh

#run a simple curl test of our API
echo "\nRUNNING SIMPLE CURL TEST:\n"

answer=$(curl "http://127.0.0.1:8855/services/calc.cfc?method=add&x=5&y=3&returnformat=plain") 
if [ "$answer" -eq "8" ]; then
    echo "\nPASS: Answer was 8"
else 
    echo "\nFAIL: Answer was not 8, it was: $answer"
    exit 1
fi