#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;

delete $gusti{'franco'};    #remove a key/value pair
%gusti = ();                #delete all of the key/value pairs from a hash

#ACCESSO ALLE CHIAVI, ITERAZIONI
#keys produce una lista di chiavi
for my $chiave (keys %indirizzi)
{
    say "Chiave: $chiave";
}

#values produce una lista di valori
for my $valore (values %indirizzi)
{
    say "Valore: $valore";
}

#each produce una lista di due elementi con chiave:valore
while (my ($destinatario, $indirizzo) = each %indirizzi)
{
    say "$destinatario vive a $indirizzo";
}
