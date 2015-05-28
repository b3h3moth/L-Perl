#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Person10;

say 'Object Counter now is: '.Person10->head_count();

my $object_a = Person10->new(
    firstname   => "mister",
    nickname    => "behemoth",
    address     => "7th avenue",
    country     => "Italy",
    occupation  => "love girls"
);

