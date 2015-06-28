#!/usr/bin/env perl
use warnings;
use strict;

# method 1
my @smaller_than_1000 = grep { (-s) < 1000 } @ARGV;
print map { "    $_\n" } @smaller_than_1000;

# method 2
# print map { " $_\n" } grep { (-s) < 1000 } @ARGV;
