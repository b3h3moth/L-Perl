#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my %car = (
    name  => 'ferrari',
    model => 'testa rossa',
    made => 'italy',
);

my %moto = (
    name => 'ducati',
    model => 'monster',
    made => 'italy',
);

# Array of hash references
my @means_of_transport = (\%car, \%moto);

# The first hash reference is %car
# get hash values (method 1)
say 'car: ', ${ $means_of_transport[0] }{'name'};
# (method 2)
say 'car: ', $means_of_transport[0]{'model'};
# (method 3)
say 'car: ', $means_of_transport[0]->{'made'};

# The second hash reference is %moto
# get the name and the model (method 2)
say $means_of_transport[1]{'name'};
