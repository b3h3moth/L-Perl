#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;
use Test::More;
use Data::Dumper;

#WHILE
#L'iterazione continua fino a quando il ciclo e' VERO
#ciclo infinito: while (1) { ... }
say 'Ciclo while';
my @numeri = (1 .. 5);

#per evitare un ciclo infinito
while (@numeri)
{
    my $valore = shift @numeri;
    say $valore;
}

#UNTIL - DO UNTIL
#L'iterazione continua fino a quando il ciclo e' FALSO
#esempi ovvi

#esempio per far capire le differenze tra while e until
my $i = 0;
my $j = 0;
print $i++ while $i <= 10; 
say '';
print $j++ until $j > 10; 
say '';

#istruzioni di controllo del ciclo next e last
say 'istr controllo: next last redo';
my @num = (6 .. 10);
while (@num)
{
    my $val = shift @num;
    next if $val eq 6;
    say $val;
}

say 'continue';
my $i = 0;
while ($i < 5)
{
    next unless $i % 2;
    say $i;
}
continue
{
    $i++;
}
