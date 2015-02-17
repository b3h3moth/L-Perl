#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;
use Test::More;
use Data::Dumper;

#DIRETTIVE DI CICLO
#Perl tratta i nomi for e foreach in modo interscambiabile
print "foreach\n";
foreach (1 .. 5)
{
    say "$_ * $_ = ", $_ * $_;
}

#forma postfissa
print "\nForma postfissa\n";
say "$_ * $_ = ", $_ * $_ for 6 .. 10;

#con variabile
print "\ncon variabile\n";
for my $i (1 .. 5)
{
    say "$i * $i = ", $i * $i;
}
