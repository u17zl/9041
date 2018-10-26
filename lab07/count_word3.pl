#!/usr/bin/perl -w

$target = lc $ARGV[0];
$count =0;

while ($line = <STDIN>)
{
    $line = lc $line;
    @word = split /[^a-z]+/i, $line;
    foreach $word(@word)
    {
        $count+=1 if $word eq $target;
    }
}
print "$target occurred $count times\n"
        
