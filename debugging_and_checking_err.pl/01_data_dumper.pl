#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;

#il modulo Data::Dumper e' perfetto per debuggare strutture dati complesse.

my %rubrica = (
    'libro'     => { titolo     => '1984',
                     autore     => 'Orwell' },
    'film'      => { titolo     => 'Shining',
                     regia      => 'Kubrick'}
);


say 'Output 1';
say Dumper %rubrica;

say 'Output 2';
say Dumper \%rubrica;
