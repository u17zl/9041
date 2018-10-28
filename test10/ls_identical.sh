#!/bin/sh

d1=$1
d2=$2
for file in ./$d1/*
do
	file=`echo "$file"|sed -e "s/\.\/$d1\///"`

	file1="./$d1/$file"
	if test -e "$file1"
	then
		file2="./$d2/$file"
		if test -e "$file2"
		then
			diff "$file1" "$file2" > /dev/null
			if test $? -eq 0
			then
				echo "$file"
			fi
		fi
	fi
done
