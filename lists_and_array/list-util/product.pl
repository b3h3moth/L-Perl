#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(product);

# product LIST;
# It returns the numerical product of all the elements in @list.
my @numbers = qw(10 10);
my $num = product @numbers;
say $num;
