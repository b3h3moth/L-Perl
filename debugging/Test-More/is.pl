#!/usr/bin/env perl
use warnings;
use strict;
use Test::More tests => 3;
use v5.22.0;

# Test::More is a Framework for writing test scripts
my $number_of_tests_run;

# is()
# It is similar to ok(). is() and isnt() compare their two arguments with 
# 'eq' (equals) and 'ne' (not equals) respectively and use the result of that
# to determine if the test succeeded or failed (true, false).

my $x = 10;
my $y = 20;

is(30, $x + $y, 'it should be true');
is(-10, $x - $y, 'it should be true');
is(10, $x - $y, 'it should be false');

done_testing($number_of_tests_run);
