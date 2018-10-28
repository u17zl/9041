#!/usr/bin/perl -w

while ($line = <STDIN>){
	$count{$line}+=1;
    if ($count{$line} == $ARGV[0]){
        print "Snap: $line";
        last;
    }
}
