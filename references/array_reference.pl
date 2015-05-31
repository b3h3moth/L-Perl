#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @colors = qw(blue red white black);

# To assign a reference to an array to a scalar, prepend it with a backslash
my $aref = \@colors;

# dereferencing with '->'
my $first_color = $aref->[0];
say 'First value is: ', $first_color;

# copy values to another array by prepending it with the @ sign
my @copy_of_colors = @$aref;

foreach (@copy_of_colors) {
    say $_;
}
