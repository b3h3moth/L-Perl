#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @numbers = qw(1 2 3 4 5 6);
my $ref_to_numbers = \@numbers;

for my $item (@{$ref_to_numbers}) {
    say $item;
}
