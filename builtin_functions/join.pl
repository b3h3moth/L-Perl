#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# join(expr, list)
# Joins the separate strings of list into a single string with fields separated
# by the value of expr, and returns that new string.

my @words = qw(stand-up for your);
my $word = 'rights';
my @band = qw(Bob Marley & the Wailers);

my $text = join('__', "get-up","stand-up", @words, $word, "by", @band);

say $text;
