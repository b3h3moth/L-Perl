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

my $tempo_attuale = 'inverno';

#operatore condizionale ternario
my $tempo_richiesto = $tempo_attuale ? 'estate' : 'primavera';
print "$tempo_richiesto\n";

#cortocircuiti 
say "Entrambi veri" if ok(1, 'sottoespressione uno')
                    && ok(1, 'sottoespressione due');
done_testing();

#Sin'ora tutte le espressioni valutano i valori in un contesto booleano, perl 5
#non ha un unico valore falso, tutti i numeri che hanno valore 0 rappresentano
#il valore booleano false.

foreach (1 .. 30) {
    print "-";
}
say "> Diretive di ciclo";

#DIRETTIVE DI CICLO
#Perl tratta i nomi for e foreach in modo interscambiabile
foreach (1 .. 10) 
{
    say "$_ * $_ = ", $_ * $_;
}

#forma postfissa
#in questo caso $i assume un valore a ciascun ciclo, lo scope e' interno al loop
say "$_ * $_ = ", $_ * $_ for 11 .. 15;

#con variabile
for my $i (1 .. 5)
{
    say "$i * $i = ", $i * $i;
}

#iterazione e aliasing
#ossia modifica i valori in situ, sul posto
my @numeri = (1 .. 10);
print Dumper \@numeri;
$_ **= 2 for @numeri;
print Dumper \@numeri;
