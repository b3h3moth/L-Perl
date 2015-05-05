#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(any);
use diagnostics;

# any { BLOCK } LIST;
# It evalutes BLOCK, setting $_ to each element of LIST in turn. It Returns
# true if any elements makes the BLOCK return a true value.
my @numbers = qw(4 2 3 6 11 8 23 7 41 5 98 9 101 10);
my $value = 10;
say @numbers;

if ( any { $_ > $value } @numbers ) {
    say "At least one number is greater than $value";
}
