#!/bin/sh

#initialization

if [ -z $1 ]; then exit 1; else writefile=$1; fi
if [ -z $2 ]; then exit 1; else writestr=$2; fi

#run

mkdir -p $(dirname $writefile)
echo -n $writestr > $writefile

#exit

exit $?
