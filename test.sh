#!/bin/bash
filename=$1

res=0
while read line; do
# reading each line
declare -i line
res=$((line - res))

done < $filename
echo $res