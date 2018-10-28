#!/usr/bin/perl -w

open F, '<', $ARGV[0] or die;
@lines = <F>;
$size = @lines;
close F;

if (!$size){
 
}elsif($size %2 == 1){
	print $lines[($size/2)];
}else{
	print $lines[($size/2)-1];
	print $lines[($size/2)];
}
	
