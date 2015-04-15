#!/usr/bin/env perl
use warnings;
use strict;
use v5.20.1;

# The smart match operator '~~' compares two operands and returns a true value
# if they match.
my $left_operand;
my $right_operand;

say 'I don\'t know why but they match' if ($left_operand ~~ $right_operand);
