#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Person;

my $person1 = Person->new(
    firstname   => "luca",
    lastname    => "pompelmo",
    nickname    => "red",
    address     => "26th avenue",
    country     => "USA",
    occupation  => "*nix system programmer"
);

my $person2 = Person->new(
    firstname   => "daniela",
    lastname    => "pompinius",
    nickname    => "topa",
    address     => "tangenziale",
    country     => "Italy",
    occupation  => "bitch"
);
my $person3 = Person->new(
    firstname   => "francesca",
    lastname    => "banana",
    nickname    => "stanga",
    address     => "18th avenue",
    country     => "France",
    occupation  => "model"
);
$person3->print_every_record();
