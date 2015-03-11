#!/usr/bin/env perl
use strict;
use warnings;

die "Usage: prog.pl <filename>\n" if (@ARGV != 1);

#get input file
open FILE, "<", $ARGV[0];
my @lines = <FILE>;

#print in reverse order
#first line will be latest, and viceversa
for(my $i = scalar(@lines) - 1; $i >= 0; $i--) {
    print $lines[$i];
}

close(FILE);
