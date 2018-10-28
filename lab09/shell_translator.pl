#!/usr/bin/perl -w

while($line = <>){
    if ($. == 1 && $line =~ /^#!/){
        print "#!/usr/bin/perl -w\n";
        next;
    }
    $line =~ s/\s*$//;
    $line =~ s/^(\s*)//;
    my $indent = $1;
    $line =~ s/(\s*#.*)//;
    my $comment =$1;

    my $perl = "";
    if ($line =~ /^(do|then)$/){
        $perl = "";
    }elsif ($line =~ /^(done|fi)$/){
        $perl = "}";
    }elsif ($line =~ /^else$/){
        $perl = "} else {";
    }elsif ($line =~ /^echo\s+(.*)$/){
        my $var = $1;
        $perl = "print \"$var\\n\";";
    }elsif ($line =~ /^(if|while)\s+\(\((.*)\)\)$/){
        my $keyword = $1;
        my $expr = $2;
        $expr =~ s/(^|[^\$])([a-zA-Z]\w*)/$1\$$2/g;
        $perl = "$keyword ($expr) {";
    }elsif ($line =~ /(.*?)=\$\(\((.*)\)\)/){
        my $lhs = $1;
        my $expr = $2;
        $expr =~ s/(^|[^\$])([a-zA-Z]\w*)/$1\$$2/g;
        $perl = "\$$lhs = $expr;";
    }elsif ($line =~ /(.*?)=(.*)/){
        my $lhs = $1;
        my $rhs = $2;
        $rhs =~ s/(^|[^\$])([a-zA-Z]\w*)/$1\$$2/g;
        $perl = "\$$1 = $2;";
    }
    print "$indent$perl$comment\n" if "$perl$comment";
}
