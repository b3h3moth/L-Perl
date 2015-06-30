#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(notall);
use constant MAX_VAL => 100;

# notall { BLOCK } LIST;
# It returns true only if no value in the LIST causes the BLOCK to return true, 
# false otherwise.
my @numbers = qw(10 20 30 40 50 60 70 80 90 100);
say join ', ',@numbers;

if ( notall { length($_) > MAX_VAL } @numbers ) {
    say 'All numbers are less than '.MAX_VAL;
}
