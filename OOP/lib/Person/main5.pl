#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Person5;

my $person = Person5->new(
    firstname   => "ciccio",
    nickname    => "franchi",
    address     => "piazza dante",
    country     => "jamaica",
    occupation  => "chef"
);

say 'Firstname is: '.$person->first_name();
say 'Nickname is: '.$person->nickname();
say 'Address is: '.$person->address();
say 'Country is: '.$person->country();
say 'Occupation is: '.$person->occupation();

$person->first_name("mister");
$person->nickname("behemoth");
$person->address("47th avenue");
$person->country("usa");
$person->occupation("admin");

say "\ndefined Firstname to: ".$person->first_name();
say 'defined Nickname to: '.$person->nickname();
say 'defined Address to: '.$person->address();
say 'defined Country to: '.$person->country();
say 'defined Occupation to: '.$person->occupation();
