#!/usr/bin/env perl
use warnings;
use strict;
use Test::More;
use v5.14;

#Framework for writing test scripts

my $x = 10;
my $y = 20;

ok($x eq $y);

done_testing();
