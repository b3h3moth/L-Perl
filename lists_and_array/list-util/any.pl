#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(any);
use constant MAX_NUM => 10;

# any { BLOCK } LIST;
# It evalutes BLOCK, setting $_ to each element of LIST in turn. It Returns
# true if any elements makes the BLOCK return a true value, false otherwise.
my @numbers = qw(4 2 3 6 11 8 23 7 41 5 98 9 101 10);
say @numbers;

if ( any { $_ > MAX_NUM } @numbers ) {
    say 'At least one number is greater than '.MAX_NUM;
}

my @strings = qw(una matina mi son svegliato o bella ciao. Partigiani sempre);
say @strings;

if ( any { length($_) > MAX_NUM } @strings ) {
    say 'At least one string is greater than '.MAX_NUM;
}
