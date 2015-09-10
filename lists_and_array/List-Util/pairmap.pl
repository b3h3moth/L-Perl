#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use List::Util 'pairmap';

my @numbers = qw(29 84 67 52 73 49 84 126 94 278 78 32 49 657 20 182);
my @pairs = pairmap { "\$a = $a : \$b = $b" } @numbers;
say join "\n", @pairs;

my @results = pairmap { $a <=50 & $b >= 100 } @numbers;
foreach my $num (@results) {
    if ($num == 0) {
        say 'false';
    } elsif ($num > 0) {
        say 'true';
    }
}
