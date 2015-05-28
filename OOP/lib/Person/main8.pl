#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Person8;

say 'Object Counter now is: '.Person8->head_count();

my $person = Person8->new(
    firstname   => "mister",
    nickname    => "behemoth",
    address     => "77th avenue",
    country     => "Cuba",
    occupation  => "killerApp"
);

say 'Object Counter now is: '.Person8->head_count();
