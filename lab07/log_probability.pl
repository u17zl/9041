#!/usr/bin/perl -w

foreach $file (glob "lyrics/*")
{
    $artist = $file;
    $artist =~ s/.*\///;
    $artist =~ s/\.txt$//;
    $artist =~ s/_/ /g;
    open $f, '<', $file or die;
    while ($line = <$f>)
    {
        $line = lc $line;
        foreach $word ($line =~ /[a-z]+/g)
        {
            $frequency{$artist}{$word} += 1;
            $n_words{$artist} += 1;
        }
    }
    close $f;
}

foreach $word (@ARGV)
{
    $word = lc $word;
    foreach $artist (sort keys %frequency)
    {
        $f = $frequency{$artist}{$word} || 0;
        $n = $n_words{$artist};
        printf "log((%d+1)/%6d) = %8.4f %s\n", $f, $n, log(($f+1)/$n), $artist;
    }
}
