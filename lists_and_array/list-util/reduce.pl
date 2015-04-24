#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(reduce);

# reduce { BLOCK } @list
#
# Reduces @list by calling BLOCK in a scalar context multiple times, setting 
# $a and $b each time. The first call will be with $a and $b set to the first 
# two elements of the list, subsequent calls will be done by setting $a to the 
# result of the previous call and $b to the next element in the list.

# default list
my @numbers = qw(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20);
say "default list: ".join ',',@numbers;

# how to get maximum
my $max = reduce { $a > $b ? $a : $b } 1..20;
say "max: $max";

# how to get minimum
my $min = reduce { $a > $b ? $b : $a } @numbers;
say "min: $min";

