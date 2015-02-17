#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;
use Test::More;
use Data::Dumper;

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
