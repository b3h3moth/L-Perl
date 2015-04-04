#!/usr/bin/env perl
use warnings;
use strict;
use Test::More;
use v5.14;

my $pattern = qr/^\d{3,4}(\w|-|_|\/)\d{6}/;
my $phone_num = '039/346790';

like($phone_num, $pattern, "Call me plase, $phone_num");

done_testing();
