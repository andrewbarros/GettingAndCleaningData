#!/bin/bash

TARGET="getdata%2Fprojectfiles%2FUCI HAR Dataset.zip"
DIR="UCI HAR Dataset"

if [ ! -e "$TARGET" ]
then
	echo "File Missing"
	wget "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fi

if [ -e "$DIR" ]
then
	rm -rf "$DIR"
fi

unzip "$TARGET"