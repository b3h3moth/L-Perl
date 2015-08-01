#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# Simple list
my @list = qw(120 4 93 8 5 28 4 6 39 93 09 4 82 37 -8  5 674 34 32 3 0);

# Print out list
say 'A: ', join ', ', @list;

# Sort list
my @sorted_list = sort @list;
say 'B: ', join ', ', @sorted_list;
