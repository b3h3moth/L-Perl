#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(shuffle);

# shuffle LIST;
# It returns the values of the input in a random order.
my @colors = (1..20);
say 'before: '.join ', ',@colors;

my @random_colors = shuffle @colors;
say ' after: '.join ', ',@random_colors;
