#!/usr/bin/env perl
use warnings;
use strict;

# A list is an ordered collection of scalars.
# An array is a variable that contains a list.
#
# An array is an ordered list of scalars, accessed by the scalar's position in
# the list. The list may contain numbers, strings, or a mixture of both.
# It might also contain references to subarrays or subhashes.

# A list literal is a list of comma-separated values enclosed in parentheses.
# These values form the elements of the list.

my ($x, $y, $z, $j, $k) = (1, 38.99, 'c', 0x1001, "str");
print "$x $y $z $j $k\n";

# To assign a list value to an array, simply group the values together with a
# set of parentheses:
my @skill = ("perl", "c", "c++", "awk");

# It's ok
my ($a) = (1,2);

# warning, variable uninitialized
my ($b,$c) = (3);
print "$a $b $c\n";

my ($str1, $str2) = ('list','array');
my ($len1, $len2) = (length($str1), length($str2));
print "Lengths are: $len1 and $len2\n";

# swapping values
($str1, $str2) = ($str2, $str1);
print "Swapping: $str1 $str2\n";
