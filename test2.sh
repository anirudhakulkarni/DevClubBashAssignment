#!/bin/bash
FILES="$@"
for f in $FILES
do
        # if .bak backup file exists, read next file
	if [ -f ${f}.txt ]
	then
		echo "Skiping $f file..."
		continue  # read next file and skip the cp command
	fi
        # we are here means no backup file exists, just use cp command to copy file
	/bin/cp $f $f.bak
done