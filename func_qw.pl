#!/usr/bin/env perl
use warnings;
use strict;

#The 'quote function' qw() is used to generate a list of words.
#from string: oggi nevica
#returns a quoted list: 'oggi', 'nevica'.

#ottimo per evitare il fastidioso inserimento di quotature e virgole.
my @skills = qw(C C++ Perl ASM InfoSec);
#e' uguale a
#my @skill = ('C', 'C++', 'Perl', 'ASM', 'InfoSec');
#
#Posso utilizzare qualsiasi carattere alfanumerico al posto delle parentesi
#tonde per delimitare gli argomenti.
#
#Lavora a compile-time, ossia trasforma le stringhe in lista prima
#dell'esecuzione del programma.
#
foreach my $skill (@skills) {
    print "skill: $skill\n";
}
