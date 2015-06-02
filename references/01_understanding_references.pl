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
# With '&' we get back a CODE reference - CODE(0x102bbbd8) - to the numbers()
# subroutine:
my $sub_ref_1        = \(&numbers);

# References to subroutines are sometimes called coderefs.

# Scalar context, the reference is to the last value of numbers(), 10:
my $sub_ref_2        = \( numbers() );

# List context, the reference is to the first value of numbers(), 5:
my ($sub_ref_3)     = \( numbers() );

# A reference on a list of values returns a list of references rather than a 
# reference to a list:
my $ref_list = \(1 .. 4);

# The anonymous array (brackets) creates an unnamed array in memory and returns
# a reference to it:
my $array_ref_anon = [ 10 .. 15 ];

# The anonymous hash (braces) creates an unnamed hash in memory and returns a
# reference to it:
my $hash_ref_anon = { login => 'behemoth', pass => 567 };

# A subroutine definition without a name returns a reference to an anonymous 
# subroutine:
my $hello = sub { print 'have a nice day' };

# The backslash operator can do more than produce a single reference. It will
# generate a whole list of references if applied to a list.

my $os_name = 'DSBnepO';
my $ref = \$os_name;

# change the value
sub invert {
     my $ref = shift;
     ${$ref} = reverse(${$ref});
}

invert(\$os_name);

say "The greatest OS is: $os_name";

sub invert2 {
    $_[0] = reverse $_[0];
}

my $os = 'SO ym si DSBnepO';
invert2($os);
say $os;
