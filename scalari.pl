#!/usr/bin/env perl
use warnings;
use strict;

#le variabili scalari iniziano con $
my $codice_postale = 86100;
my $citta_regione_cap = 'Campobasso, Molise'.' '.$codice_postale;
print "$citta_regione_cap";

my $codice = 'KBMIU';
my $prossimo_codice = ++$codice;
print "\n$codice - $prossimo_codice\n";
my $codice_attuale = $codice++;
print "\n$codice - $codice_attuale\n";
