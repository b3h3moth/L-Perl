#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::MoreUtils qw(apply);

# apply BLOCK LIST;
# Applies BLOCK to each item in LIST and returns a list of the values after 
# BLOCK has been applied.
my @numbers = qw (5 10 15 20 25);
say join ', ',@numbers;

my @multiples = apply { $_ *= 2 } @numbers;
say join ', ',@multiples;
