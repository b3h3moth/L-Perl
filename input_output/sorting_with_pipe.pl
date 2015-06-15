#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Sorting an input file.

die "Usage: $0 <filename>\n" if (@ARGV != 1);

chomp(my $file_to_sort = $ARGV[0]);
