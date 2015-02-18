#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#L'operatore per i riferimenti è il backslash \
my $os_name = 'OpenBSD';
my $ref = \$os_name;

say  "$ref"; #indirizzo di memoria
say "$$ref";  #dereferenziazione, accede al valore a cui si riferisce

#si modifica il valore
sub invert {
     my $ref = shift;
     $$ref = reverse($$ref);
}

invert(\$os_name);

say "$os_name";
