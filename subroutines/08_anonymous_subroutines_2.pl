#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Data::Dumper;

# Anonymous subroutines example

# The hash 'greets' stores data in this way; 
# key => Anonymous subroutines
my %greets = (

    Franca => sub {
        my $person = shift;
        say "Franca: Ciao, $person!";
    },

    Antonella => sub {
        my $person = shift;
        if ($person eq 'Antonella') {
            say "Antonella: $person?";
        } else {
            say "Antonella: Hi, $person";
        }
    },

    Giulia => sub {
        my $person = shift;
        say "Giulia: Buongiorno, $person";
    },

    Luca => sub {
        my $person = shift;
        say "Luca: Hello, $person";
    }
);

print Dumper \%greets;

my @room;

for my $person (qw(Franca Antonella Giulia Luca)) {
        say "$person walks into the room";

        for my $room_person(@room) {
            $greets{$person}->($room_person);
            $greets{$room_person}->($person);
        }
        push @room, $person;
    }
