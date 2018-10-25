#!/usr/bin/perl -w
$display_lines = 10;

if (@ARGV > 0 && $ARGV[0] =~ /-(\d+)/) {
    $display_lines = $1;
    shift @ARGV;
}

if (@ARGV == 0) {
    @lines = <>;
    $first = @lines - $display_lines;
    $first = 0 if $first < 0;
    print @lines[$first..$#lines];
} else {
    $show_fname = @ARGV > 1;
    foreach $file (@ARGV) {
        open my $f, '<', $file or die "$0: can't open $file\n";
        print "==> $file <==\n" if $show_fname;
        @lines = <$f>; #read $f line by line#
        $first = @lines - $display_lines;
        $first = 0 if $first < 0;
        print @lines[$first..$#lines];
        close $f;
    }
}


