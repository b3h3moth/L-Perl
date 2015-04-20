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
    say "$i * $i = ", $i * $i;
}

my @numbers = (1..5);
for (@numbers)
{
    $_ **= 2;
    say "C: $_ ";
}

for (1..5) {
    say "D: $_";
}

my @skill = qw(perl c c++ awk zsh bash python sed);
for (@skill) {
    say "E: $_";
}

foreach (@skill) {
    say "F: $_";
}
