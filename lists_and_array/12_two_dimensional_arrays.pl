#!/usr/bin/env perl
use warnings;
use strict;

# How to create two-dimensional array.

my @men = ('marco','franco','luca','claudio');
my @women = ('clara','francesca','giada','giulia');

# first method: by using array references.
my $ref_men = \@men;
my $ref_women = \@women;

my @men_and_women = ( $ref_men, $ref_women );
