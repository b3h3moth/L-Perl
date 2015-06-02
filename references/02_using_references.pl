#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Dereferencing uses the value that a reference points to, there are several 
# different forms. The basic form in scalar context is to use a block, with
# the leading '$'.

# Dereferencing ordinary scalar:
my $year = 2015;
my $scalar_ref = \$year;
say 'A: reference to scalar: ', ${ $scalar_ref };
my $next_year = ${ $scalar_ref } + 1;
say 'A: next_year = ', $next_year;

# Note that with scalar values the curly braces can be omitted:
my $ref_scalaref = \$scalar_ref;
say 'A: value of scalar reference: ', $$scalar_ref;
say 'A: value of reference to reference: ', $$$ref_scalaref; # and so on ...

# Dereferencing array:
my @colors = qw(red white blue);
my $array_ref = \@colors;
say 'B: reference to array: ', @{ $array_ref };     # all list values
say 'B: single element: ', ${ $array_ref }[0];      # single element
push @{ $array_ref }, qw(black green gray);         # add elements to the list
say 'B: new array: ', join ', ', @{ $array_ref };

# Dereferencing anonymous array:
my $ref_anon_array_1 = [ 1 .. 5 ];
my $ref_anon_array_2 = [ 6 .. 10 ];

say 'B: dereferencing an anonymous array 1: ', join ', ', @{$ref_anon_array_1};
say 'B: Dereferencing an anonymous array 2: ', join ', ', @{$ref_anon_array_2};

# The code inside the block can be complex.
# How to set an ordinary scalar with few operations on the first element of the
# array reference:
my $num = ${
    my $i = shift $ref_anon_array_1;
    if ($i) {
        $ref_anon_array_1
    } else {
        $ref_anon_array_2
    }
}[0];
say 'B: complex block produces: ', $num;

# Dereferencing anonymous hash:
my $hash_ref = { italy => 'rome', france => 'paris', spain => 'madrid' };
say 'C: hash keys: ', join ', ', keys %{$hash_ref};

# As well as scalars we can omitted the curly braces:
say 'C: hash values: ', join ', ', values %{$hash_ref};

# How to get single value (Canonical form);
say 'C: single hash value: ', ${$hash_ref}{'italy'};

# How to get single value (Scalar form);
say 'C: single hash value: ', $$hash_ref{'france'};

# How to get single value (Arrow form);
say 'C: single hash value: ', $hash_ref->{'spain'};

my $person->[1] = { firstname => 'francesca', nickname => 'fra' };
say 'C: cascade arrows: ', $person->[1]->{'firstname'};
say 'C: idem: ', $person->[1]{'nickname'};
