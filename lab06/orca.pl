#!/usr/bin/perl -w

open (my $file, "<", "$ARGV[0]") or die;
$counts = 0;

while ($line = <$file>)
{
    if ($line =~ m/Orca/)
    {
        $line =~ /\s(\d+)\s/g;
        $counts += $1;
    }
}
print "$counts Orcas reported in $ARGV[0]\n";
close $file;
