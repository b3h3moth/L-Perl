#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;

#in alri linguaggi sono array associativi
#scalare -> valore
#si realizza con:
my %gusti; #e' vuoto

#$  singoli elemnti
#{} chiave

#ASSEGNAMENTO SINGOLO
$gusti{luca} = 'Nocciola';
$gusti{mamy} = 'Fior di latte';
$gusti{albi} = 'Cioccolato';
$gusti{papi} = 'Limone';
$gusti{'gino'} = 'mela';
$gusti{"pino"} = 'ananas';

#multiple assignement, method 1
%gusti = ('carla', 'bionda', 'francesca', 'mora', 'maria', 'rossa');
#multiple assignement, method 2
%gusti = (
    'papi', 'limone',
    'albi', 'cioccolato'
);

#assegnamento utilizzando l'operatore '=>' (rende più esplicito)
%gusti = (
    franco => 'amarena',
    gina   => 'panna'

);

#INDICIZZAZIONE
#da notare che non ho usato un operatore di concatenazione, per cui l'ultimo
#hash creato e' quello valido, gli altri sono stati sovrascritti
print "$gusti{gina}\n";
print "$gusti{franco}\n";

#ESISTENZA CHIAVI HASH
#meglio usare exists piuttosto che cercare sul valore associato ala chive
say "Ho il gusto preferito di luca " if exists $gusti{luca};
say "Ho il gusto preferito di franco " if exists $gusti{franco};

#una chiave potrebbe anche esistere ed essere undef, per cui e' possibile
#controllarla con defined
my %indirizzi = (
    luca    => 'Campobasso',
    mamy    => 'Campobasso',
    pinco   => 'Roma',
    pallino => undef,
    maria   => 'Mantova',
);

say "pallino vive a $indirizzi{pallino}" if exists $indirizzi{pallino}
                                         && defined $indirizzi{pallino};

#ACCESSO ALLE CHIAVI, ITERAZIONI
#keys produce una lista di chiavi
for my $chiave (keys %indirizzi)
{
    say "Chiave: $chiave";
}

#values produce una lista di valori
for my $valore (values %indirizzi)
{
    say "Valore: $valore";
}

#each produce una lista di due elementi con chiave:valore
while (my ($destinatario, $indirizzo) = each %indirizzi)
{
    say "$destinatario vive a $indirizzo";
}

#$ 'dollar signs'   = scalar variable
#@ 'at' symbol      = array
#% 'percent' sign   = hash
#@hash              = entire hash
#$hash{'elem'}      = hash element
