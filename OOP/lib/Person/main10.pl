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
    occupation  => "make pizza"
);

say 'Object Counter now is: '.Person10->head_count();

my $object_b = Person10->new(
    firstname   => "leonardo",
    nickname    => "leo",
    address     => "Vinci",
    country     => "Italy",
    occupation  => "genius"
);

say 'Object Counter now is: '.Person10->head_count();

say 'Full record:';
foreach my $person( Person10->every_record() ) {
    say $person->first_name().' '.$person->nickname().' '.$person->country();
}
