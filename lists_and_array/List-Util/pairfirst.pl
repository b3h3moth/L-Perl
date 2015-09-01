#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use List::Util 'pairfirst';
use Data::Dumper;

my @list = qw( 123 23 34 45 56 67 78 98 98 78 6 45 34 35 );

my @new_list = pairfirst { $a > 20, $b < 30  } @list;
say join ', ', @new_list;

my %hash = pairfirst { $a = $a * $b, $b = $a + $b } @list;
