#!/usr/bin/env perl
use warnings;
use strict;
use v5.20.1;

# This feature is experimental.

# The smart match operator '~~' compares two operands and returns a true value
# if they match.

my $x = 10;
my $y = 20;

say 'A: doesn\'t match' if ($x ~~ $y);
