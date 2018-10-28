#!/usr/bin/perl -w

foreach $word (@ARGV){
	if ($word =~ /^.*[aeiou][aeiou][aeiou].*$/ig){
		print "$word ";
	}
}
print "\n";
