#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# How to create two-dimensional array.

my @men = ('marco','franco','luca','claudio');
my @women = ('clara','francesca','giada','giulia');

# first method: by using array references.
my $ref_men = \@men;
my $ref_women = \@women;

my @men_and_women = ( $ref_men, $ref_women );

say $men_and_women[0][0].' loves '.$men_and_women[1][0];
