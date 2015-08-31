#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use List::Util 'pairfirst';

my @kvlist = qw(1 123 23 34 45 56 67 78 98 98 78 6 45 34 35i 10);

my ( $key, $value ) = pairfirst { $a = $_; $b = $_  } @kvlist;

say "$key, $value";
