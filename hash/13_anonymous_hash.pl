#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Make anonymous hash simply substitute curly bracket for the parentheses; this
# produces a hash which has no name, but which is referenced by the variable
# $ref_hash.
my $ref_hash = {uno => 1, due => 2};
