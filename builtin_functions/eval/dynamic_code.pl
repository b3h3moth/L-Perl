#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $weight = 12;
my $height = 10;

foreach my $op ( qw(* + -) ) {
    my $result = eval "$weight $op $height";
    say "$weight $op $height = $result";
}
