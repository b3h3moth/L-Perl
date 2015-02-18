#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#L'operatore per i riferimenti è il backslash \
my $os_name = 'DSBnepO';
my $ref = \$os_name;

say " address memory: $ref";    #indirizzo di memoria
say "default OS name: $$ref";   #dereferenziazione

#modifica il valore
sub invert {
     my $ref = shift;
     $$ref = reverse($$ref);
}

invert(\$os_name);

say "The greatest OS is: $os_name";

sub invert2 {
    $_[0] = reverse $_[0];
}

my $os = 'SO ym si DSBnepO';
invert2($os);
say "$os";
