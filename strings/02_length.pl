#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# length(string)
# This function returns the number of characters in its argument. If no
# argument is given, length() returns the number of characters in Perl's
# default variable '$_':

my $song = 'Roots, Rock, Reggae';
say 'length of $song: '.length($song);

$_ = 'Positive vibration';
print 'length of $_: '.length;

