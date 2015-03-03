#!/usr/bin/env perl
use warnings;
use strict;

my ($file) = @ARGV;

open(IN, "< $file");

while (my $line = <IN>) {
    $line = uc($line);
    print "$line";
}

close(IN);
