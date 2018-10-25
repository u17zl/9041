#!/bin/sh

for file in *
do
    if [[ $file == *.png ]]
    then
        echo "$file already exists"
    fi

    if [[ $file == *.jpg ]]
    then
        convert "$file" "${file%.*}.png"
    fi
done
