#!/usr/bin/env perl

# Solo i doppi apici " interpretano le variabili e i meta caratteri
print 'Ciao, mondo!';
print 'Ciao, mondo!\n';

print "Ciao, mondo!\n";

# variabile package di Perl 4, ormaI OBSOLETA, sempre globale
$nome = 'luca';

# tra apici doppi
print "Ciao $nome\n";

# variabili lessicali, hanno valore solo nel contesto in cui sono state scritte
my $var = "Var lessicale"; 
print "$var";
