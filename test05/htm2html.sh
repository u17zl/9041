#!/bin/sh

for file in *.htm
do
    new_name="$file"l
    if test -e "$new_name"
    then 
        echo "${file}l exists"
        exit 1
    else
        mv "$file" "$new_name"
    fi
done
exit 0
