#!/bin/sh
if test $# != 2
then
    echo 'Usage: ./echon.sh <number of lines> <string>'
    exit 1
fi

if test "$1" -ge 0 2>/dev/null
then
    :
else
    echo "./echon.sh: argument 1 must be a non-negative integer"
    exit 1
fi

num=$1
word=$2

line=0
while test $line -lt $num
do
    echo $word
    line=$(($line + 1))
done

exit 0
