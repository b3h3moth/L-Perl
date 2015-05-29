#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Person;

my $person = Person->new(
    firstname   => "luca",
    lastname    => "suriano",
    nickname    => "behemoth",
    address     => "26th San Lorenzo avenue",
    country     => "Italy",
    occupation  => "*nix system programmer"
);
