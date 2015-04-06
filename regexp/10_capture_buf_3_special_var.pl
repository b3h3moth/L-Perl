#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Even if you don't use the grouping metacharacters, it is still possible to
# find out what part of a string was matched to a pattern.
#
# There are three special variable:
# $& capture the string matched by the last successful pattern match;
# $` The string preceding whatever was matched by the last successful pattern
#    match (the text to the left)
# $' The string following whatever was matched by the last successful pattern
#    match (the text to the right)

my $text = 'leftabcdefghiright';
say "$`:$&:$'" if ($text =~ /def/);
