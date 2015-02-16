#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;
use Test::More;
use Data::Dumper;

#DIRETTIVE DI CICLO
#Perl tratta i nomi for e foreach in modo interscambiabile
print "foreach\n";
foreach (1 .. 5) 
{
    say "$_ * $_ = ", $_ * $_;
}

#forma postfissa
print "\nForma postfissa\n";
say "$_ * $_ = ", $_ * $_ for 6 .. 10;

#con variabile
print "\ncon variabile\n";
for my $i (1 .. 5)
{
    say "$i * $i = ", $i * $i;
}

#ITERAZIONE E ALIASING
#ossia modifica i valori in situ, sul posto
print "\nAliasing\n";
my @numeri = (1 .. 10);
$_ **= 2 for @numeri;
print Dumper \@numeri;

for (@numeri)
{
    $_ **= 2;
    print "$_ ";
}

#CICLO STILE C
print "\nCiclo stile C\n";
for (my $i = 0; $i <= 5; $i += 1)
{
    say $i;
}

for (say 'Inizializzazione: ', my $x = 0;
     say "Iterazione: $x" and $x < 5;
     say 'Incremento: ' . $x++)
 {
     say "$x";
 }
