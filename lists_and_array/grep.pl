#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# The grep builtin takes a list and produces another list of all values 
# matching grep's criteria. In scalar context, returns the number of times the 
# expression was true.
#
# grep BLOCK       LIST;
# grep EXPRESSION, LIST;

# firstss method ith BLOCK
my @numbers = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
my @greater_five = grep {$_ > 5} @numbers;

for my $elem (@greater_five) {
    print "$elem ";
}
