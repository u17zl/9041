#!/usr/bin/perl -w

open ($file,"<", $ARGV[1]) or die;
$line_num = 1;

while ($line = <$file>)
{
    if ($line_num == $ARGV[0])
    {
        print $line;
    }
    $line_num += 1;
}
close $file;
