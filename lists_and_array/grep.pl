#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# grep BLOCK       LIST;
# grep EXPRESSION, LIST;
# 
# The grep builtin takes a list and produces another list of all values 
# matching grep's criteria. In scalar context, returns the number of times the 
# expression was true.

# make a list from numbers greater than 5, then print the result
my @integers = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
my @greater_five = grep {$_ > 5} @integers;

say 'A: ', join(', ', @greater_five);

# make a list from words that start with vowels, then print the result
my @song = qw(no woman no cry
              said I remember when we used to sit
              in the government yard in Trenchtown
              Oba observing the 'ypocrites);
my @words = grep {/^[aeiou]/i} @song;

say 'B: ', join(', ', @words);

# make a sorted list from numbers greater equals to 15, then print the result
my @numbers = (1, -98, 18, 18.9, -64, 4, 98, 1028, -5, 16, 28.8, 2.4, 8, -218);
my @result = sort { $a <=> $b } grep { $_ >= 10 } @numbers;

say 'C: ', join ', ', @result;

# make a list, the last digit must be 8
my @last_digit_is = grep /8$/, @numbers;
say 'D: ', join', ', @last_digit_is;
