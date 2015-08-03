#!/usr/bin/env perl
use warnings;
use strict;
use Personal1;
use Personal2;

my $luca = Shopper::Personal2->new('luca', 100);

my $marco = Shopper::Personal1->new(
    {
        mame    => 'luca',
        budget  => 100
    }
);
