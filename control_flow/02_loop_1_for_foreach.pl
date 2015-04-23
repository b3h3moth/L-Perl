#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Test::More;
use Data::Dumper;

# postfix 
say "B: $_ * $_ = ", $_ * $_ for 6 .. 10;

# for mith scalar
for my $i (1 .. 5)
{
    say "C: $i * $i = ", $i * $i;
}

# for and list
my @numbers = (1..5);
for (@numbers)
{
    $_ **= 2;
    say "D: $_ ";
}

# for with '..' operator
for (1..5) {
    say "E: $_";
}

# for with array
my @skill = qw(perl c c++ awk zsh bash python sed);
for (@skill) {
    say "F: $_";
}

# foreach loop
foreach (1 .. 5)
{
    say "A: $_ * $_ = ", $_ * $_;
}

# foreach loop with array
foreach (@skill) {
    say "G: $_";
}
