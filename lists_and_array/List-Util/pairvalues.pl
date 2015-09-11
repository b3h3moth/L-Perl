#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use List::Util 'pairvalues';

my @numbers = qw(10 29 38 30 47 56 42 53 64 57 93 04 58 26 89 67 54 8 20 1);
my @result = pairvalues @numbers;
say join "\n", @result;
