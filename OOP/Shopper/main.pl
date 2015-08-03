#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

my $luca = Shopper::Personal->new(
    {
        mame    => 'luca',
        budget  => 100
    }
);
