#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# split each digit greater than 50

my @numbers = qw(11 22 33 44 55 66 77 88 99);
my @result = map { split // } grep { $_ > 50 } @numbers;

say join "\n", @result;
