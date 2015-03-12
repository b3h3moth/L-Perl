#!/usr/bin/env perl
use warnings;
use strict;

#converts characters from lower to upper case with transileration
die "Usage: prog.pl <filename>\n" if (@ARGV != 1);

my ($file) = @ARGV;

open(INPUT, "< $file");

while (my $line = <INPUT>) {
    $line =~ tr/[a-z]/[A-Z]/;
    print "$line";
}


close(INPUT);
