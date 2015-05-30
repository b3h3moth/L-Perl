#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @colors = qw(blue red white black);
my $refcolor = \@colors;

say $refcolor;
my @copy_of_colors = @$refcolor;
say @copy_of_colors;
