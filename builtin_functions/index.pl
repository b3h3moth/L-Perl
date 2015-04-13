#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# index(str, substr, position)
#
# The index() function searches for one string within another, It returns the
# position of the first occurrence of substring in string.
#
# The index() function has an optional third argument that indicates the
# starting position from which it should start looking.
#
#
my $string = 'The Perl language programming by Larry Wall';
my $substr = 'ming';

if ((my $result = index($string, $substr)) == -1) {
    die ("\'$substr\' was not found in \'$string\'\n");
} else {
    say "Found \'$substr\' in \'$string\' at index: \'$result\'";
}
