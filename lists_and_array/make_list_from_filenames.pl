#!/usr/bin/env perl
use warnings;
use strict;

my @smaller_than_1000 = grep { (-s) < 1000 } @ARGV;
print map { "    $_\n" } @smaller_than_1000;
