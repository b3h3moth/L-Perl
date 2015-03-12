#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;
use Data::Dumper;

my @names = qw(Foo Bar Baz);
my @languages = qw(Awk C C++ Perl);

#aggiungo l'intero array dopo il primo elemento, per cui ciascun elemento
#si aggiungera' alla lista di elementi
splice @names, 1, 0, @languages;

print Dumper @names;
print;

my @color = qw(Black White Red Gray);
my @city = qw(NewYork Boston Parigi Roma);

#aggiungo l'array come reference
splice @color, 1, 0, \@city;

print Dumper @color;
