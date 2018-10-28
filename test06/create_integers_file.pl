#!/usr/bin/perl -w

$begin = $ARGV[0];
$end = $ARGV[1];

open ($file,">", $ARGV[2]) or die;
while ($begin <= $end)
{
    print $file "$begin\n";
    $begin += 1;
}
close $file;
