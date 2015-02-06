#!/usr/bin/env perl
use strict;
use warnings;

# nel perl moderno si sarebbe potuto utilizzare al posto di scrict e warnings 
# il modulo CPAN Modern, che equivale per l'appunto ai due su citati.

my $number = int rand(20) +1;

# L'operatore di ripetizione e' x, e' facile capire il contesto
my $string = 'He ' x $number;
print "$string";
