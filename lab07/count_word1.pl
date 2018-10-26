#!/usr/bin/perl -w

$target = lc $ARGV[0];
while ($line = <STDIN>)
{
    $line = lc $line;
    @word = $line =~ /$target/ig;
    push @total, @word;
}
$size = @total; 
print "$target occurred $size times\n"
        
