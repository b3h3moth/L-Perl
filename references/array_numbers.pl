#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @numbers = qw(1 2 3 4 5 6);
my $ref_to_numbers = \@numbers;

# We can place any reference to an array in curly braces in place of the name 
# of an array. Now reference refers to the entire array.
for my $item (@{$ref_to_numbers}) {
    say $item;
}
