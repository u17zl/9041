#!/bin/sh

for music_path in "$@"
do
    album=`basename "$music_path"`
    year=`echo ${album##* }`

    for mp3 in "$music_path"/*.mp3
    do
        mp3_name=`basename "$mp3" .mp3`
        track=`echo "$mp3_name"|sed 's/ - .*//'`
        title=`echo "$mp3_name"|sed 's/^[0-9]* - //;s/ - .*//'`
        artist=`echo "$mp3_name"|sed 's/.* - //'`
        id3 -t "$title" -T "$track" -a "$artist" -A "$album" -y "$year" "$mp3" >/dev/null
    done
done 
