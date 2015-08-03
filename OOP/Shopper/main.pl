#!/usr/bin/env perl
use warnings;
use strict;
use Personal1;
use Personal2;

# Pass a hash reference
my $marco = Shopper::Personal1->new(
    {
        mame    => 'luca',
        budget  => 100
    }
);

# Pass a list
my $luca = Shopper::Personal2->new('luca', 100);
