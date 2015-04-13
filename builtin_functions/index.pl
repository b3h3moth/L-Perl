#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# The index function searches for one string within another, It returns the
# position of the first occurrence of substring in string:
my $string = 'The Perl language programming by Larry Wall';
my $substr = 'ming';
say index($string, $substr);
