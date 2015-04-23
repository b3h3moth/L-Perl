#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# The grep builtin takes a list and produces another list of all values 
# matching grep's criteria. In scalar context, returns the number of times the 
# expression was true.

my @list = qw(1 2 3 4 5 6 7 8 9 10);
my @new_list = grep { $_ > 5} @list;

for my $elem (@new_list) {
    print "$elem ";
}
