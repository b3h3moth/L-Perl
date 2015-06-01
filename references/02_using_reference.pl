#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Dereferencing uses the value that a reference points to, there are several 
# different forms. The basic form is to use a block.

# Dereferencing ordinary scalar:
my $year = 2015;
my $scalar_ref = \$year;
say 'A: reference to scalar: ', ${ $scalar_ref };
my $next_year = ${ $scalar_ref } + 1;
say 'B: next_year = ', $next_year;

# Dereferencing array:
my @colors = qw(red white blue);
my $array_ref = \@colors;
say @{ $array_ref };        # all list values
say ${ $array_ref }[0];     # single element
push @{ $array_ref }, qw(black green gray); # add elements to the list

my $ref_anon_array_1 = [ 1 .. 5 ];
my $ref_anon_array_2 = [ 6 .. 10 ];

# The code inside the block can be complex:
my $val = ${
    my $i = shift $ref_anon_array_1;
    if ($i) {
        $ref_anon_array_1
    } else {
        $ref_anon_array_2
    }
}[0];
say $val;
say join ',',@{$ref_anon_array_1};
