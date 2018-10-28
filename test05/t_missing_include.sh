#!/bin/sh

for file in "$@"

do
    for header in `egrep '"[a-z]*\.[a-z]*"' "$file"|sed 's/^.* "//;s/".*$//'`
    do
        if test ! -r "$header"
        then 
            echo "$header included into $file does not exist"
        fi
    done
done
