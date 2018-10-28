#!/bin/sh

begin=$1
end=$2
file="$3"

while((begin <= end))
do
    echo $begin
    begin=$((begin+1))
done >$file
