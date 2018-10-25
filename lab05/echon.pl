#!/usr/bin/perl -w

if (@ARGV != 2) {
    die "Usage: $0 <number of lines> <string>\n";
}
if ($ARGV[0] !~ /^[0-9]+$/) {
    die "$0: argument 1 must be a non-negative integer\n";
}
foreach ($a = 0; $a < $ARGV[0]; $a+=1){
    print "$ARGV[1]\n";
}
 
