#!/bin/bash

function file_count() {
	cd .
	count=$(ls -al | wc -l)
	((count=count-3))
	echo $count
	return $count
}

number_of_lines=$(file_count)
echo "The number of files are ${number_of_lines}"

