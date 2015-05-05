#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::MoreUtils qw(pairwise);

# pairwise BLOCK ARRAY1 ARRAY2;
# Evaluates BLOCK for each pair of elements in ARRAY1 and ARRAY2 and returns a
# new list consisting of BLOCK's return values. The two elements are set to $a
# and $b.
