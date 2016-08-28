#!/bin/bash

function file_count() {
	cd $1
	count=$(ls -al | wc -l)
	((count=count-3))
	echo "$1:"
	echo $count
}

file_count ~/scripts


 
