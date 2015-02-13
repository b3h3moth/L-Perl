#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;
use Test::More;

my %hash_vuoto;
ok(! %hash_vuoto, 'booleano: un hash vuoto dovrebbe avere valore falso');

my %chiave_falsa = ( 0 => 'valore vero');
ok(%chiave_falsa, 'booleano: un hash contenente falso come chiave 
                   dovrebbe avere valore vero' );

my %valore_falso = ( 'chiave vera' => 0);
ok(%valore_falso, 'booleano: un hash contenente falso come valore 
                   dovrebbe avere valore vero' );
done_testing();
