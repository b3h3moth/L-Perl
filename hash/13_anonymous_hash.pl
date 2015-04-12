#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Make anonymous hash simply substitute curly bracket for the parentheses; this
# produces a hash which has no name, but which is referenced by the variable
# $ref_hash.
my $ref_hash = {nero => 'black', bianco => 'white', => arancione => 'orange'};

# dereference with '->' operator:
say 'nero in English is: '.$ref_hash->{nero};

# dereference entire hash with '%' prefix
say %$ref_hash;

my @it_colors = keys %{$ref_hash};
say @it_colors;
