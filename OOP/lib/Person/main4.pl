#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Person4;

my $person = Person4->new(
    firstname   => "mister",
    lastname    => "behemoth",
    address     => "5th avenue",
    country     => "italy"
);

say 'First name is: '.$person->first_name();
