#!/bin/sh

#initialization

if [ -z $1 ]; then exit 1; else tmp=$1; fi
if [ -d $tmp ]; then filesdir=$tmp ; else exit 1; fi

if [ -z $2 ]; then exit 1; else searchstr=$2; fi

#run

number_of_files=$(find $filesdir -type f -exec grep $searchstr {} \; | wc -l)
number_of_matching_files=$(find $filesdir -type f -exec grep $searchstr {} \; | wc -l)

echo "The number of files are $number_of_files and the number of matching lines are $number_of_matching_files"

#exit

exit $?
