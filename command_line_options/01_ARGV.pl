#!/usr/bin/env perl
use warnings;
use strict;

my ($name, $surname) = @ARGV;
die 'Scrivere nome e cognome' if (@ARGV != 2);

print "Hello $name $surname\n";

