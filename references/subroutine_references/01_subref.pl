#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

sub luca_greets {
    my $who = shift;
    say "Luca: Hi, $who";
}

sub giusy_greets {
    my $who = shift;

    if ($who eq "Luca") {
        say "Giusy: fuck you $who";
    } else {
        say "Giusy: hi $who";
    }
}

# Basic subroutine call
luca_greets('Giusy');
giusy_greets('Luca');

