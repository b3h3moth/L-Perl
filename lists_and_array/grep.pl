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

# get list from numbers greater than 5 and print results
my @integers = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
my @greater_five = grep {$_ > 5} @integers;

say join(', ', @greater_five);

# get list from words that start with vowels and print results
my @song = qw(no woman no cry
              said I remember when we used to sit
              in the government yard in Trenchtown
              Oba observing the 'ypocrites);
my @words = grep {/^[aeiou]/i} @song;

say join(', ', @words);

# get sorted list from numbers greater equals to 15 and print results
my @numbers = (1, -9, 15, 18.9, -64, 4, 2.3, 7, -5, 16, 28.8, 2.4, 0, 83, -2);
my @result = sort { $a <=> $b } grep { $_ >= 10 } @numbers;

say join ', ', @result;
