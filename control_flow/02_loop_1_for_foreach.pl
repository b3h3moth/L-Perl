#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Test::More;
use Data::Dumper;

# foreach loop
foreach (1 .. 5)
{
    say "A: $_ * $_ = ", $_ * $_;
}

# postfix 
say "B: $_ * $_ = ", $_ * $_ for 6 .. 10;

for my $i (1 .. 5)
{
    say "C: $i * $i = ", $i * $i;
}

my @numbers = (1..5);
for (@numbers)
{
    $_ **= 2;
    say "D: $_ ";
}

for (1..5) {
    say "E: $_";
}

my @skill = qw(perl c c++ awk zsh bash python sed);
for (@skill) {
    say "F: $_";
}

foreach (@skill) {
    say "G: $_";
}
