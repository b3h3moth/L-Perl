#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @numbers = qw(1 2 3 4 54 56  76 89 465 3452 234 435 0 7 42 54 56 890 21 32);

# splits each number into its individual digits
my @result = map { split // } @numbers;

say join ', ', @result;
