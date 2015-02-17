#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;
use Test::More;

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
