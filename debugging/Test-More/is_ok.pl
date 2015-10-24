#!/usr/bin/env perl
use warnings;
use strict;
use Test::More;
use v5.22.0;

# Framework for writing test scripts
my $x = 10;
my $y = 20;

ok($x <= $y, "$x <= $y it should be true");
ok(1, 'it should be true');
ok(0, 'it should be false');
ok('a', 'it should be true');
ok('', 'it should be false');

is(30, $x + $y, 'it should be true');
is(-10, $x - $y, 'it should be true');
is(10, $x - $y, 'it should be false');
done_testing();
