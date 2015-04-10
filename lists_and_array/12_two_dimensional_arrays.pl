#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# How to create two-dimensional array.

my @men = ('marco','franco','luca','claudio');
my @women = ('clara','francesca','giada','giulia');

# First method: by using array references:
my $ref_men = \@men;
my $ref_women = \@women;

my @men_and_women = ( $ref_men, $ref_women );
#It's the same thing
my @men_women = ( \@men, \@women);

say $men_and_women[0][0].' loves '.$men_and_women[1][0];
say $men_women[0][1].' loves '.$men_women[1][1];
