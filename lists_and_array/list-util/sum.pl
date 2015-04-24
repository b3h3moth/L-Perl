#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(sum);

my @greater_five = qw(1 2 3 4 5);
my @greater_six = qw(6 7 8 9 10);

my $total_five = sum @greater_five;
say "A: $total_five";

my $total = sum @greater_five, @greater_six;
say "B: $total";
