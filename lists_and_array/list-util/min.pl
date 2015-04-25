#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(min);

# min LIST
# Returns the entry in the list with the lowest numerical value. If the list is
# empty then undef is returned.
my @numbers = qw(784 342 54 698 436 890 2134 345 7645 534 654 8 6345 23 235);
my $min_elem = min @numbers;

say "list: ".join ', ',@numbers;
say "lowest value: $min_elem";
