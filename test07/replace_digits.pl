#!/usr/bin/perl -w

open ($filein,"<", $ARGV[0]) or die;
open ($fileout,">", "TEMP.txt") or die;

while ($line = <$filein>){
    $line =~ s/\d/\#/g;
    print $fileout $line;
}
close $filein;
close $fileout;
rename("TEMP.txt",$ARGV[0]);
