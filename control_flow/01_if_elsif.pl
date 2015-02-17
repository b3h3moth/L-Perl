#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;
use Test::More;
use Data::Dumper;

my $name = 'luca';
my $surname = 'suriano';

#forma postfissa per expr semplici
say "Ciao, Luca" if $name eq 'luca';

#forma a blocco, richiede parentesi
if ($name eq 'luca') {
    say "hey ciao";
}

#puo' contenere diverse sotto-expr
if ($name eq 'luca' && $surname eq 'suriano') {
    say "Ma ciao";
}

#unless forma negata di if
say "Non sei luca" unless $name eq 'luca';

#sia unless sia if hanno la direttiva else
if ($name eq 'lucas') {
    say "hey ciao";
} else {
    say "Chi sei?";
}

#operatori condizionali positivi e negativi
#ne - not equals
if ($name ne 'luca') {
    say "chi?";
} else {
    say "ho capito, ciao";
}

#1+ direttive elsif possono seguire if e precedere else
if ($name eq 'lucsa') {
    say "hey ciao";
} elsif ($name eq 'franco') {
    say "hei ciao franco";
} else {
    say "Sapevo che eri tu luca";
}
