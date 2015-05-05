#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(all);
use constant MAX_NUM => 5;

# all { BLOCK } LIST;
# It evalutes BLOCK, setting $_ to each element of LIST in turn. It returns 
# true if all elements make the BLOCK return a true value, false otherwise.
my @colors = qw(orange black white green);
say join ', ',@colors;

if ( all { length($_) > MAX_NUM } @colors ) {
    say 'All strings are greater than '.MAX_NUM;
} else {
    say 'OPS ... any string is not greater than '.MAX_NUM;
}
