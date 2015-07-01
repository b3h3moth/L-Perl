#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Scalar::Util qw(looks_like_number);

# the looks_like_number() function returns a boolean value indicating whether a
# string looks like a number

my @list_of_values = qw(23 7o8  2:1 v2 19_73 24-h 1 00O);

foreach my $value (@list_of_values) {
    if (looks_like_number($value)) {
        say "Yes, \'$value\' looks like number";
    } else {
        say "No, \'$value\' doesn't look like number";
    }
}
