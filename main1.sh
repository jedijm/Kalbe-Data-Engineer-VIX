#!/bin/bash

path="/hdfs/data/data1"
name_of_directory="data"

if [ -d "$path/$name_of_directory"];
then
	echo "There is $name_of_directory Directory Exists!"
else
	echo "$name_of_directory Directory Not Exists!"
	#Create Directory in the path
	mkdir -p "$path/$name_of_directory"
	echo "Directory $name_of_directory Created"
fi
