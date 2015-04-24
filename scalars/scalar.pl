#!/usr/bin/env perl
use warnings;
use strict;

# A scalar start with '$' sigil.
# Variable types and their uses:
#  Type          Sigil  Example
#  ----------------------------------------------------------------------------
#  Scalar        $      $cents      An individual value (number or string)
#  Array         @      @large      A list of values, keyed by number
#  Hash          %      %interest   A group of values, keyed by string
#  Subroutine    &      &how        A callable chunk of Perl code
#  Typeglob      *      *struck     Everything named struck
#
# A scalar is the simplest kind of data that Perl manipulates.
# Most scalars are either a number or a string of characters.
#
# Although you may think of numbers and strings as very different things, Perl
# uses them nearly interchangeably.

my $codice_postale = 86100;
my $citta_regione_cap = 'Campobasso, Molise'.' '.$codice_postale;
print "$citta_regione_cap";

my $codice = 'KBMIU';
my $prossimo_codice = ++$codice;
print "\n$codice - $prossimo_codice\n";
my $codice_attuale = $codice++;
print "\n$codice - $codice_attuale\n";
