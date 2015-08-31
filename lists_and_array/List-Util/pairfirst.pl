#!/usr/bin/env perl
use warnings;
use strict;
use v5.20.2;

my @kvlist = qw(1 123 23 34 45 56 67 78 98 98 78 6 45 34 35);

my ( $key, $value ) = pairfirst { my $a =~ m/^[[:upper:]]+$/ } @kvlist
