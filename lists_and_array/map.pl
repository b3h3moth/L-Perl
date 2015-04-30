#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# map BLOCK       LIST;
# map EXPRESSION, LIST;
#
# The map builtin function, like the grep builtin function, takes a list and 
# returns a new list, but it operates on every element of a list.
# 
# Evaluates the BLOCK or EXPR for each element of LIST and returns the list 
# value composed of the results of each such evaluation. In scalar context, 
# returns the total number of elements so generated.

# convert lowercase characters to uppercase characters
my @lower = ('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm');
my @upper = map { uc } @lower;

say join ', ',@upper;

# Increment default list by one
my @default = (0, 1, 2, 3, 4, 5, 6, 7, 8, 9);
my @increment = map { $_ + 1 } @default;

say join ', ',@increment;

# create hash
