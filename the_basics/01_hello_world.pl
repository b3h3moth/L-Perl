#!/usr/bin/env perl


print 'Hello World!';
print 'Hello World!\n';

print "Hello World!\n";

# variabile package di Perl 4, ormaI OBSOLETA, sempre globale
$nome = 'luca';

# tra apici doppi
print "Ciao $nome\n";

# variabili lessicali, hanno valore solo nel contesto in cui sono state scritte
my $var = "Var lessicale";
print "$var";
