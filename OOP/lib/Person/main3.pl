#!/usr/bin/env perl
use warnings;
use strict;
use Data::Dumper;
use Person3;

my $person_a = Person3->new("mister","behemoth","47th avenue","Italy");

my $person_b = Person3->new(
    firstname   => "mister",
    lastname    => "behemoth",
    address     => "5th avenue",
    country     => "Italy",
    city        => "campobasso",
    occupation  => "Computer Scientist"
);

print Dumper \$person_a;
print Dumper \$person_b;
