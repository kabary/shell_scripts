#!/bin/bash

DATE=$(date +%Y-%m-%d)
counter=0

for file in *.jpg
do
	((counter=counter+1))
	mv $file "$DATE-$file"
done

echo $counter

if [ $counter -eq 0 ]; then
	echo "There are no jpeg files in that directory"
else
	echo "$counter jpeg files name changed"
fi

