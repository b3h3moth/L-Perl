#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#the default array '@_' is a local array, but its elements are aliases for the
#actual scalar parameters.
#Note: the first element of the array '@_' is $[0]

sub reverse_name {
    $_[0] = reverse $_[0];
}

my $name = "mister b3h3m0th";
reverse_name($name);
say $name;
