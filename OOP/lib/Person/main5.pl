#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Person5;

my $person = Person5->new(
    firstname   => "mister",
    nickname    => "behemoth",
    address     => "5th avenue",
    country     => "italy",
    occupation  => "Developer"
);

say 'Firstname is: '.$person->first_name();
say 'Nickname is: '.$person->nickname();
say 'Address is: '.$person->address();
say 'Country is: '.$person->country();
say 'Occupation is: '.$person->occupation();
