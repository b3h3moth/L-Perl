#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# A reference is always a scalar value.

my $year = 2015;
my @colors = qw(red white blue);
my %country = (Italy => "Rome", USA => "Washington", France => "Paris");
sub numbers {
    return 5 .. 10;
}

# The simplest way to create a reference is with the backslash operator '\'. It
# works on any kind of variable name and hash/array elements.
my $scalar_ref     = \$year;
my $array_ref      = \@colors;
my $hash_ref       = \%country;
my $glob_ref       = \*STDOUT;
my $array_elem_ref = \$colors[0];
my $hash_elem_ref  = \$country{'print_year'};

# References to literal values are read-only:
my $decimal_ref  = \10;
my $hex_ref      = \hex '0xF';

# References to subroutines.
# With '&' we get back a CODE reference - CODE(0x102bbbd8) - to the print_year
# subroutine:
my $sub_ref        = \(&print_year);
say $sub_ref;



# A reference on a list of values returns a list of references rather than a 
# reference to a list:
my $ref_list = \(1 .. 4);
