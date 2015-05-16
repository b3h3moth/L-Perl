#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $name = 'luca';
my $surname = 'suriano';

# postfix
say "Ciao, Luca" if $name eq 'luca';

if ($name eq 'luca') {
    say "hey ciao";
}

if ($name eq 'luca' && $surname eq 'suriano') {
    say "Ma ciao";
}

if ($name eq 'lucas') {
    say "hey ciao";
} else {
    say "Chi sei?";
}

# Conditional operator
# ne - not equals
if ($name ne 'luca') {
    say "chi?";
} else {
    say "ho capito, ciao";
}

# a lot of elsif branches
if ($name eq 'lucsa') {
    say "hey ciao";
} elsif ($name eq 'franco') {
    say "hei ciao franco";
} else {
    say "Sapevo che eri tu luca";
}
