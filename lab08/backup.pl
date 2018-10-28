#!/usr/bin/perl -w
use File::Copy;

$i=0;
while(1){
    $new_name = ".$ARGV[0].$i";
    if (-e $new_name){
        $i += 1;
    }else{
        copy( "$ARGV[0]", "$new_name") or die;
        print "Backup of '$ARGV[0]' saved as '$new_name'\n";
        exit(0);
    }
}
