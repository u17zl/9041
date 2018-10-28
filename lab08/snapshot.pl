#!/usr/bin/perl -w

use File::Copy;

if ($ARGV[0] eq "save"){	
    save();

}
if ($ARGV[0] eq "load"){
    save();
    load();        
}

sub save {
    my @file = glob '*.txt';
    my $i = 0;
    while(@file){        
	    my $new_name = ".snapshot.$i";
        if (-e $new_name){
            $i += 1;
        }else{
            mkdir $new_name or die "save mkdir failed";
            foreach my $fa (@file){                  
		        copy( "$fa", "./$new_name") or die "copy failed";
	        }
            print "Creating snapshot $i\n";            
            last;
        }
    }
}

sub load {
    my @orig_txt = glob"./.snapshot.$ARGV[1]/*.txt";
    foreach my $fb (@orig_txt){
        copy ("$fb", "./") or die "load copy failed!";
    }
    print "Restoring snapshot $ARGV[1]\n";
}
