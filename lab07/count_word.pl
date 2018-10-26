#!/usr/bin/perl -w

$target = lc $ARGV[0];
while (<STDIN>)
{
    foreach $word(/$target/ig)
    {
        push @total, $word;
    }
}
$size = @total; 
print "$target occurred $size times\n"
        
