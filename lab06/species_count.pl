#!/usr/bin/perl -w

open (my $file, "<", "$ARGV[1]") or die;
$target= $ARGV[0];

$pods_num = 0;
$idvdl_num = 0;
while ($line = <$file>)
{
    if ($line =~ m/$target/)
    {
        $line =~ /\s+(\d+)\s/g;
        $pods_num += 1;
        $idvdl_num += $1;
        
    }
}
print "$ARGV[0] observations: $pods_num pods, $idvdl_num individuals\n";
close $file;
