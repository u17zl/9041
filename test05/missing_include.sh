#!/bin/sh

for file in "$@"
do
    for header in `egrep '^#include *"' "$file"|sed 's/" *$//;s/.*"//g'`
    do
        if test ! -e "$header"
        then 
            echo "$header included into $file does not exist"
        fi
    done
done
        
