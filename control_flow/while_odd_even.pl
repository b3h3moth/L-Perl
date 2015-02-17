#!/usr/bin/env perl
use warnings;
use strict;

die "Specify al least five numbers\n" if (@ARGV < 5);

my @numbers = @ARGV;

print "@numbers";
