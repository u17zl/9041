#!/usr/bin/perl -w

open($f1,"<","$ARGV[0]") or die;
my %hash;

while ($line = <$f1>){
    $len = length($line);
    $hash{$line}=$len;
}

my @key = sort{$hash{$a}<=>$hash{$b}} sort keys %hash;
foreach (@key){
    print "$_";
}
    
