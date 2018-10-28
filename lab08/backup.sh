#!/bin/sh

i=0
while ((1))
do
    new_name=."$1".$i
    if test -e "$new_name"
    then 
        i=$((i+1))
    else
        cp "$1" "$new_name"
        echo "Backup of '$1' saved as '$new_name'"
        exit 0
    fi
done

