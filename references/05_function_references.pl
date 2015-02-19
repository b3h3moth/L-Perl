#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @cards = qw(A 1 2 3 4 5 6 7 8 9 10);
my $rif = \@cards;

#dereferenzia automaticamente i riferimenti
push $rif, qw(J Q K);
#La deferenziazione vuol dire accedere al valore del riferimento

say @$rif;

pop $rif;

say @cards;
