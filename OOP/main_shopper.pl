#!/usr/bin/env perl
use strict;
use warnings;

use Shopper::Personal;

my $shopper = Shopper::Personal->new({
    name   => 'behemoth',
    budget => 1500,
});
$shopper->buy(
    'birra',
    'ducati',
    ('caffe')  x 2,
    ('pizza') x 2,
    'acqua',
);

print $shopper->get_invoice;

my $next_shopper = Shopper::Personal->new({
    name  => 'luca',
    limit => 5,
});
