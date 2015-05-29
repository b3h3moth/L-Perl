#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Person;

my $person = Person->new(
    firstname   => "mister",
    nickname    => "behemoth",
    address     => "7th avenue",
    country     => "Italy",
    occupation  => "*nix sustem programmer"
);
