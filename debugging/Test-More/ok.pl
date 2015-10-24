#!/usr/bin/env perl
use warnings;
use strict;
use Test::More tests => 5;
use v5.22.0;

# Test::More is a Framework for writing test scripts
my $number_of_tests_run;

# ok()
# The purpose of ok() is to print out either "ok" or "not ok" depending on if
# a given test succeeded or failed (true or false).

my $x = 10;
my $y = 20;

my $true_result = "it should be true";
my $false_result = "it should be false";

ok ( $x <= $y, "$x <= $y $true_result");
ok ( 1,        "$true_result");
ok ( 0,         $false_result);
ok ( 'a',      'it should be true');
ok ( '',       'it should be false');

done_testing($number_of_tests_run);
