#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# int EXPR
# Returns the integer portion of EXPR, it truncates towards 0.

my $num = 9.8347;
say $num;

# Remove decimal numbers
my $integer = int($num);
say $integer;
