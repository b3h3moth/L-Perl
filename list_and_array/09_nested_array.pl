#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;

#NESTED ARRAY
my @marche = (
    [qw(bmw fiat audi opel renault ferrari )],
    [qw(aprilia ducati honda yamaha)],
    [qw(armani versace valentino 'dolce & gabbana' trussardi)],
);

print Dumper @marche;

#accesso alle strutture dati annidate
my $moto = $marche[1][1];
my $car = $marche[0]->[5];
my $dress = $marche[2]->[0];
my $tot_marche = @{$marche[0]};

say "moto: $moto - ".
    "car: $car - ".
    "dress: $dress - ".
    "tot marche auto: $tot_marche";
