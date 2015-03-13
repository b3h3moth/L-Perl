#!/usr/bin/env perl
use warnings;
use strict;

die "Usage: prog.pl <filename>\n" if (@ARGV != 1);

my ($file) = @ARGV;
my $total_blank_lines = 0;

open(INPUT, "< $file");

while (my $line = <INPUT>) {
    $total_blank_lines++ if ($line =~ m/^$/);
}

print "Total blank lines: $total_blank_lines\n";

close(INPUT);
