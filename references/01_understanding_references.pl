#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# A reference is always a scalar value.

my $year = 2015;
my @colors = qw(red white blue);
my %country = (Italy => "Rome", USA => "Washington", France => "Paris");
sub hello { say 'hello' }

# The simplest way to create a reference is with the backslash operator '\'. It
# works on any kind of variable name and hash/array elements
my $scalar_ref     = \$year;
my $array_ref      = \@colors;
my $hash_ref       = \%country;
my $sub_ref        = \&hello;
my $glob_ref       = \*STDOUT;
my $array_elem_ref = \$colors[0];
my $hash_elem_ref  = \$country{'hello'};

# References to literal values are read-only
my $decimal_ref  = \10;
my $hex_ref      = \hex '0xF';
