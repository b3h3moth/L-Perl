#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

sub operating_system {
    say 'OpenBSD is my OS';
}

#reference operator and function sigil '\&'
my $ref = \&operating_system;

$ref->();
#&$rif works but it is not good!

my %greets = (

    Franca => sub {
        my $person = shift;
        say "Franca: hey there, $person!";
    },

    Antonella => sub {
        my $person = shift;
        if ($person eq 'Antonella') {
            say "Antonella: yes, $person";
        } else {
            say "Antonella: Hi, $person";
        }
    },

    Giulia => sub {
        my $person = shift;
        say "Giulia: you're $person";
    },

    Luca => sub {
        my $person = shift;
        say "Luca: well hello $person";
    }
);

my @room;

for my $person (qw(Franca Antonella Giulia Luca)) {
        say "$person walks into the room";

        for my $room_person(@room) {
            $greets{$person}->($room_person);
            $greets{$room_person}->($person);
        }
        push @room, $person;
    }
