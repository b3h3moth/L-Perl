#!/usr/bin/env perl
use warnings;
use strict;

my @molecules = qw(DNA cDNA mRNA tRNA rRNA);

#join EXPR,LIST
#join() unisce le stringhe di LIST in un'unica stringa con gli elementi separati
#da EXPR, che puo' essere definito a piacimento.

my $joined_string = join(",", @molecules);
print "$joined_string\n";

#valido
print join(" - ", @molecules), "\n";

#Nota: Ottimo per lavorare con CSV (comma-separated values)

#il comportamento opposto di join() e' cura di split(), che per l'appunto divide
#una stringa in un array
my $sentence = "Oggi e' marted' 10 febbraio 2015, giornata fredda ma col sole";
my @words = split(" ", $sentence);
print "@words\n";
