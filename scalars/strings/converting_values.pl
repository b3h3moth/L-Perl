#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# ord EXPR
# It converts a character to a number. It returns the numeric value of the 
# first character of EXPR.

my $character = "a";
my $result_number_conversion = ord($character);
say "$character:$result_number_conversion";

