#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;

#push e pop aggiungo e rimuovono dalla coda
#pop uno per volta
my @hobby = qw(calcio security programmazione unix cinema libri);
my @altri = qw(palestra teatro yoga);

push @hobby, 'bicicletta';
push @hobby, @altri;
say "@hobby";

pop @hobby;
pop @hobby;
say "@hobby";

#unshift e shift aggiungono e rimuovono dalla testa
unshift @hobby, qw(droga sesso rockNroll);
shift @hobby;
say "@hobby";
