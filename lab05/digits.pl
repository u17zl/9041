#!/usr/bin/perl -w

while (<STDIN>) {
    s/[0-4]/</g;
    s/[6-9]/>/g;
    print;
}
