#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(maxstr);

# maxstr LIST
# Treats all the entries in the list as strings and returns the highest string
# as defined by the gt (greater than) operator. If the list is empty then undef
# is returned.
my @numbers = qw(take 12 a 23 walk 34 on 45 the 56 wild 67 side 78 Lou Reed);
my $max_str = maxstr @numbers;

say "list: ".join ', ',@numbers; 
say "highest string: $max_str";
