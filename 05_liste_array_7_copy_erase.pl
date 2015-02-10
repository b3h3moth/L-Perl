#!/usr/bin/env perl
use warnings;
use strict;

my @a_to_m = qw(a b c d e f g h i j k l m);
my @m_to_z = qw(n o p q r s t u v w x y z);

#tutto in un unico array
my @alphabet = (@a_to_m, @m_to_z);

#copia dell'array
my @alphabet_copy = @alphabet;

#svuota array
@alphabet = ();

print "Original alphabet: @alphabet\n";
print "Copy: @alphabet_copy\n";
