#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Shopper::Personal;

my $object = Shopper::Personal->new( {
        firstname => 'liuc',
        lastname  => 'behemoth',
        budget    =>  1000,
} );
