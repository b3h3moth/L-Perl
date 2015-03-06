#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;

#NESTED HASH
my %pasti = (
    colazione => { primo    => '',
                   secondo  => '',
                   contorno => 'cappuccino'
                 },
    pranzo    => { primo    => 'pasta',
                   secondo  => 'bistecca',
                   contorno => 'frutta'
                 },
    cena      => { primo    => 'insalata',
                   secondo  => 'pollo',
                   contorno => 'frutta'
                 }
 );

print Dumper %pasti;

#accesso alle strutture dati annidate
my $cibo_colazione = $pasti{colazione}{contorno};
my $tot_cena = keys %{$pasti{cena}};
say "colazione: $cibo_colazione - ".
    "tot cena: $tot_cena";
