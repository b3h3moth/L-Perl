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

# Cascade arrows. If on the left and right sides of an arrow are both 
# subscripts [], you can omit the arrow:
my $person->[1] = { firstname => 'luca', nickname => 'geek' };
say 'C: cascade arrows: ', $person->[1]->{'firstname'};
say 'C: cascade arrows (omit): ', $person->[1]{'nickname'};

sub numbers{ return 5 .. 10 }
# Dereferencing subroutines.
# Dereferencing a subroutine reference calls the subroutine indirectly. We can
# do that with prefix '&'.
# scalar context:
my $sub_ref_1 = \&numbers();
say 'D: subroutine reference (scalar context): ', ${$sub_ref_1}; # get 10

# list context:
my ($sub_ref_2) = \&numbers();
say 'D: subroutine reference (list context); ', ${$sub_ref_2}; # get 5

my $sub_ref_3 = sub { 
    my $args = shift // 'old';
    say 'D: anon subroutine (', $args, ')';
};
&$sub_ref_3();
$sub_ref_3->('better'); # better

my $s_ref = \2015;
# Gei information with ref() about the type of object it points to:
say 'E: ref $s_ref: ', ref $s_ref;
say 'E: ref $ref_scalaref: ', ref $ref_scalaref;
say 'E: ref $array_ref: ', ref $array_ref;
say 'E: ref $hash_ref: ', ref $hash_ref;
say 'E: ref $hash_ref: ', ref $hash_ref;
