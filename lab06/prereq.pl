#!/usr/bin/perl -w
$course = $ARGV[0];
$url_undergra = "http://www.handbook.unsw.edu.au/undergraduate/courses/2018/$course.html";
$url_postgra = "http://www.handbook.unsw.edu.au/postgraduate/courses/2018/$course.html";

open my $F, "wget -q -O- $url_undergra $url_postgra|" or die;
while ($line = <$F>) {
    if ($line =~ /Prerequisite(s)?:/)
    {
        $line =~ s/EXCLU.*/ /i;
        my @precourse = $line =~ /([A-Z]{4}[0-9]{4})+/g;
        push @prereqs, @precourse;
    }
}
foreach $course (sort @prereqs)
{
    print "$course\n";
}
