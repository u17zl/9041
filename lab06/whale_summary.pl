#!/usr/bin/perl -w

open (my $file, "<", "$ARGV[0]") or die;

while ($line = <$file>)
{
    $line = lc $line;
    $line =~ s/\s+$//;
    $line =~ s/s?$//;
    $line =~ s/\s+/ /g;
    if ($line =~ m/(\d+)\s(.+)$/)
    {
        $line =~ /\s+(\d+)\s(.+)$/g;
        $pods_num{$2} += 1;
        $pods_indi{$2} += $1;
        
    }
}
foreach $species (sort keys %pods_num)
{
    print "$species observations: $pods_num{$species} pods, $pods_indi{$species} individuals\n";
}
close $file;
