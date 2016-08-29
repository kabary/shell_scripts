#!/bin/bash

echo -n "Please enter a file extension:"
read extension
echo $extension 
echo -n "Please enter a file prefix:  (Press ENTER for anything)"
read prefix
echo $prefix

counter=0
if [ $prefix == ""]; then
	for file in *.$extension
	do
		((counter=counter+1))
		mv $file "anything-$file"
	done
else
	for file in *.$extension
	do
		((counter=counter+1))	
		mv $file "$prefix-$file"
	done

fi
echo "$counter files changed"

