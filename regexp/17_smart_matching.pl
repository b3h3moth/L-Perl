#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# The smart match operator ~~ looks at both of its operands and decides on its
# own how it should compare them. If the operands look like numbers, it does a
# numeric comparison. If they look like strings, it does a string comparison.
# If one of the operands is a regular expression, it does a pattern match.
# It can also do some complex tasks that would otherwise take a lot of code,
# so it keeps you from doing too much typing.
# Returns a true value if operands match.


my $x = 10;
my $y = 20;

say "A:" unless ($x ~~ $y);

my $str = '20 years old';
say "B:" if ($str ~~ $y);

my $re = qr/old/;
say "C: $&" if ($str ~~ $re);
