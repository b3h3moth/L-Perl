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
    occupation  => "*nix sustem programmer"
);

$record->print_every_record();
