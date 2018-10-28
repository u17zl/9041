#!/usr/bin/perl -w

foreach $word (@ARGV){
    if(!$hash{$word}){
        print "$word ";
        $hash{$word} = 1;
    }   
}
print "\n";

