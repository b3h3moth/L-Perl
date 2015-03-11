#!/usr/bin/env perl
use strict;
use warnings;

#reverse order of lines, emulates 'tac' unix tool

die "Usage: prog.pl <filename>\n" if (@ARGV != 1);

#get input file
open FILE, "<", $ARGV[0];
my @lines = <FILE>;

#print in reverse order
for(my $i = scalar(@lines) - 1; $i >= 0; $i--) {
    print $lines[$i];
}

close(FILE);
