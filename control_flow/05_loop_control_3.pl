#!/usr/bin/env perl
use warnings;
use strict;

#stampa i numeri primi compresi tra 100 e 200

my $n = 0;

while (1) { #ciclo infinito
    $n++;

    redo if ($n < 100); #non considera numeri minori di 100
    last if ($n > 200); #ferma il ciclo per numeri maggiori di 200

    my $prime = 1; #condizione vera/true

    for (my $i = 2; $i < $n; $i++) {
        if ($n % $i == 0) {
            $prime = 0; #condizione falsa/false
            last; #esci dal loop
        }
    }
    print "$n\n" if $prime;
}
