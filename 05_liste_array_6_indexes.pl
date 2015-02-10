#!/usr/bin/env perl
use warnings;
use strict;

my @molecules = qw(DNA cDNA mRNA tRNA rRNA);
my $number = 1;

print "@molecules\n";

print "Position 0 = $molecules[0]\n";
print "Position $number = $molecules[$number]\n";
#con indice flotaing-point, saranno entrambi arrotondani in basso, quindi 2
print "Position 2.01 = $molecules[2.01]\n";
print "Position 2.99 = $molecules[2.99]\n";
#numero negativo conta dalla fine
print "Position -1 = $molecules[-1]\n";
print "Position -2 = $molecules[-2]\n";
print "Position -3 = $molecules[-3]\n";

