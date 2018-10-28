#!/usr/bin/perl -w

my @filea = glob("./$ARGV[0]/*");
my @fileb = glob("./$ARGV[1]/*");

foreach my $fa (@filea) {
	$fa =~ /[a-zA-Z0-9\.]*$/;
	my $name = $&;
	if (-e "./$ARGV[1]/$name") {
		open(my $a,"<","./$ARGV[0]/$name") or die;
		open(my $b,"<","./$ARGV[1]/$name")or die;
		my @a = <$a>;
		my @b = <$b>;
	  	$stra = join "",@a;
	  	$strb = join "",@b;
		if ($stra eq $strb) {
			print "$name\n";
		
		}
		close $a;
		close $b;
	}else{
	next;
	}
	
}

