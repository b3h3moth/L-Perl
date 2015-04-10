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

my $scalar = 'perl';
my $ref_scalar = \$scalar;

if (ref($ref_scalar) eq 'SCALAR') {
    say $ref_scalar.' is a reference to scalar';
} elsif (ref($ref_scalar) eq '') {
    say $ref_scalar.' is not a reference';
}
