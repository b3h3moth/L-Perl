#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# Simple list
my @list = qw(get up stand up stand up for your rights);

# Print out list
say 'A: ', join ', ', @list;

# Sort list
my @sorted_list = sort @list;
say 'B: ', join ', ', @sorted_list;
