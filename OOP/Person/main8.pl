#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Person8;

say 'Object Counter now is: '.Person8->head_count();

my $object_a = Person8->new(
    firstname   => "mister",
    nickname    => "behemoth",
    address     => "77th avenue",
    country     => "Cuba",
    occupation  => "killerApp"
);

say 'Object Counter now is: '.Person8->head_count();

my $object_b = Person8->new(
    firstname   => "leonardo",
    nickname    => "leo",
    address     => "Vinci",
    country     => "Italy",
    occupation  => "genius"
);

say 'Object Counter now is: '.Person8->head_count();

say 'Full record:';
foreach my $person( Person8->every_record() ) {
    say $person->first_name().' '.$person->nickname().' '.$person->country();
}
