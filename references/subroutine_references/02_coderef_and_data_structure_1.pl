#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

sub luca_greets {
    my $who = shift;
    say "Luca: Hey $who";
}

sub giusy_greets {
    my $who = shift;

    if ($who eq "Luca") {
        say "Giusy: $who?";
    } else {
        say "Giusy: Ciao $who";
    }
}

sub mara_greets {
    my $who = shift;
    say "Mara: Hi $who";
}

my %greets = (
    Luca    => \&luca_greets,
    Giusy   => \&giusy_greets,
    Mara    => \&mara_greets,
);

for my $who (qw(Luca Mara Giusy)) {
    $greets{$who}->('Francesca');
    # &{$greets{$who}}('Francesca');
}
