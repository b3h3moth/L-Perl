#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Person11;

my $record = Person11->new(
    firstname   => "mister",
    nickname    => "behemoth",
    address     => "7th avenue",
    country     => "Italy",
    occupation  => "sex machine"
);

$record->address('Majorana avenue');
say $record->full_address();
