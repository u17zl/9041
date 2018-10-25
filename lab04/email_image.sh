#!/bin/sh

for file in "$@"
do
    display "$file"
    echo 'Address to e-mail this image to?'
    read addr
    if [ -n "$addr" ]
    then
        echo 'Message to accompany image?'
        read message
        echo "$message"|mutt -s "${file%%.*}" -e 'set copy=no' -a "$file" -- "$addr"
        echo "$file" sent to "$addr"
    fi
done
