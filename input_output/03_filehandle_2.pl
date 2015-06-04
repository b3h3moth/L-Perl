#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

die "Usage: $0 <filename>\n" if (@ARGV != 1);

my ($filename) = @ARGV;

if ( ! open(PASS, '>>', "$filename")) {
    die "Cannot open $filename: $!\n";
}

print PASS "How to write some text\n";

close(PASS);
