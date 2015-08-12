#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# Anonymous subroutines example

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
