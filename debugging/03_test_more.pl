#!/usr/bin/env perl
use warnings;
use strict;
use Test::More;
use v5.14;

#Framework for writing test scripts

ok(1, 'it must be true');
ok(0, 'it must be false');
ok('a', 'it must be true');
ok('', 'it must be false');

done_testing();
