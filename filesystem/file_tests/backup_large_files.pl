#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Find files inside this directory
my $dir = shift // '.';

open(FH, $dir);

while (readdir FH) {
    say $_;
}

close(FH);
