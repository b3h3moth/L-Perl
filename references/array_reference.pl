#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @colors = qw(blue red white black);
# reference to the array
my $aref = \@colors;

my $first_color = $aref->[0];
say $first_color;

