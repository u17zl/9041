#!/bin/sh

for image in "$@"
do
    time=`ls -l $image|cut -d' ' -f6-8`
    temporary_file="$image.$$"
    convert -gravity south -pointsize 36 -draw "text 0,10 '$time'" "$image" "$temporary_file" &&
    touch -r "$temporary_file" "$image" &&
    mv "$temporary_file" "$image"
done
    
