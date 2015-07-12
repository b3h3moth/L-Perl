#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# ref(EXPR) function returns a non-empty string if EXPR is a reference, the
# empty string otherwise. The value returned depends on the type of thing the
# reference is a reference to:
# SCALAR;
# ARRAY;
# HASH;
# CODE;
# REF;
# GLOB;
# LVALUE;
# FORMAT;
# IO;
# VSTRING;
# Regexp.

my $scalar  = 'perl';
my %hash    = ('lang' => 'perl');
my @array   = qw(nati non foste per viver come bruti);

my $ref_scalar  = \$scalar;
my $ref_hash    = \%hash;
my $ref_array   = \@array;

if (ref($ref_scalar) eq 'SCALAR') {
    say $ref_scalar.' is a reference to \'scalar\'';
} elsif (ref($ref_scalar) eq '') {
    say 'It\'s not a \'scalar\' reference';
}

if (ref($ref_hash) eq 'HASH') {
    say $ref_hash.' is a reference to \'hash\'';
} elsif (ref($ref_hash) eq '') {
    say 'It\'s not an \'hash\' reference';
}

if (ref($ref_array) eq 'ARRAY') {
    say $ref_array.' is a reference to \'array\'';
} elsif (ref($ref_array) eq '') {
    say 'It\'s not an \'array\' reference';
}
