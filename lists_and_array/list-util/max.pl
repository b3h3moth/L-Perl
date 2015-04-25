#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(max);

# max LIST
# Returns the entry in the list with the highest numerical value. If the list 
# is empty then undef is returned.

my @numbers = qw(827 47 10, 1 83 38 81 39 5 45 100 820 829 37 83 743 93 483);
my $max_elem = max @numbers;
say "List: ".join ', ',@numbers;
say "max: $max_elem";
