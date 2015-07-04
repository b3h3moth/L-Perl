#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @array = qw(white blue reed green black);

my $first_ref = \@array;
my $second_ref = $first_ref;
my $third_ref = $second_ref;

# They are identical
