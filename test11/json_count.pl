#!/usr/bin/perl -w

use Encode;
use JSON;
use Data::Dumper;

# my $json = new JSON;

open(MYFILE, "./$ARGV[1]");
read(MYFILE, $content, -s "./$ARGV[1]");
close(MYFILE);
# print Dumper $content;

my $js = decode_json($content);
my $var = $js->[0];
print(%$var);
# print(decode_json($js));
# my $obj = $json->decode($js);
# print(".Dumper($obj)")