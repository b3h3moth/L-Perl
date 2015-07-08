#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my %car = (
    name  => 'ferrari',
    model => 'testa rossa',
    made => 'italy',
    color => 'red'
);

my %moto = (
    name => 'ducati',
    model => 'monster',
    made => 'italy',
    color => ['red', 'white']
);

# Array of hash references
my @means_of_transport = (\%car, \%moto);
