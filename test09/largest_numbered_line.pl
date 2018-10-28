#!/usr/bin/perl -w

while ($line = <STDIN>) {
	my @line_num = $line =~ /(\-?\d+\.?\d?)/g;
	if (@line_num) {
		my $max_num = (sort {$b <=> $a} @line_num)[0];
		push @nums, $max_num;
		push @lines, $line;
	}
}
if (@nums){
	my $max_num = (sort {$b <=> $a} @nums)[0];
	foreach $i (0..$#nums){
		if ($nums[$i] == $max_num){
			print $lines[$i];
		}
	}
}
