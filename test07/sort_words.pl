#!/usr/bin/perl -w

while ($line = <STDIN>){
    @word = split /\s+/, $line;
    print join(" ", sort @word), "\n";
}
