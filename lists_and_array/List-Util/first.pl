#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(first);

# first { BLOCK } LIST
# 
# It returns  the first element of LIST that satisfies the condition specified
# in the BLOCK. first() evaluates BLOCK setting $_ to each element of LIST in
# turn.

# get the first number > $value
my $value = 400;
my @numbers = qw(440 820 370 620 10 800 700 300 700 200 50 720 840 240 720 80);
my $results = first {$_ > $value} @numbers;
say join ', ',$results;
