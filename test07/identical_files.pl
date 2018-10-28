#!/usr/bin/perl -w
use File::Compare;

$size = @ARGV;
die "Usage: ./identical_files.pl <files>" if $size == 0;
$i = 0;

while ($i < ($size-1)){
  open ($f1, "<", $ARGV[$i]) or die;
  open ($f2, "<", $ARGV[$i+1]) or die;
  @a = <$f1>;
  @b = <$f2>;
  chomp(@a);
  chomp(@b);
  $stra = join " ",@a;
  $strb = join " ",@b;
  if ($stra ne $strb){
     print "$ARGV[$i+1] is not identical\n";
     exit(0);
  }else{
     $i+=1;
     if ($i == ($size-1)){
        print "All files are identical\n";
        exit(0);
     }
  }
  close $f1;
  close $f2;
}



