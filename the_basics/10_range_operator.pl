#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#range operator '..'
foreach (1 .. 10) {
    print;
}

say '';
my @alphabet = ('a' .. 'z');

foreach (@alphabet) {
    print;
}

say '';
my @list = (1.29 .. 5.16);
print "@list";
