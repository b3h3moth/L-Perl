#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Person10;

my $record = Person10->new(
    firstname   => "mister",
    nickname    => "behemoth",
    address     => "7th avenue",
    country     => "Italy",
    occupation  => "love girls"
);

#say 'Object Counter now is: '.Person10->head_count();
# say $record->full_name();

$record->send_email('I have a dream', 
                   'My Dream is that Juventus F.C. will win Champions League');
