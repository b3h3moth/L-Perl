#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Dereferencing uses the value that a reference points to, there are several 
# different forms. The basic form is to use a block.

# Dereferencing ordinary scalar:
my $year = 2015;
my $scalar_ref = \$year;
say ${ $scalar_ref };
my $next_year = ${ $scalar_ref } + 1;
say $next_year;

# Dereferencing array:
my @colors = qw(red white blue);
my $array_ref = \@colors;
say @{ $array_ref };        # all list
say ${ $array_ref }[0];     # single element
