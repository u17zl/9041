#!/usr/bin/perl -w

while (<STDIN>)
{
    foreach $word (/[a-z]+/ig) 
    {
       push @total, $word;
    }
}
$size = @total;
print "$size words\n";
