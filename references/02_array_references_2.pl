#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @numbers = qw(1 2 3 4 5 6);
my $ref_to_numbers = \@numbers;

# $ref_to_numbers refers to entire array
for my $item (@{$ref_to_numbers}) {
    say $item;
}
