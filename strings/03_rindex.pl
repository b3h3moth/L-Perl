#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# rindex(string, substring)
# The rindex()function is similar to index() except that it searches the string
# from right to left, instead ofleft to right.
#
# Except for the name of the function itself, the syntax for calling rindex()
# is exactly the same as for index().
#
# It returns ­1 if the substring is not found.

my $string = "get up stand up, stand up for your rights";
my $substr = "up";

if ((my $result = rindex($string, $substr)) != -1) {
    say $string;
    say 'the substring was found at (r)index: '."$result";
} else {
    say 'the substring was not found';
}
# Note: Even though rindex() searches through the string from right to left,
# the first character of the string is still the leftmost character.
