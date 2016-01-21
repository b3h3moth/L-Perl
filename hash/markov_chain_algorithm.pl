#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

my %statetab;
my $MAXGEN = 10000;
my $NONWORD = "\n";
my $w1;
my $w2;

$w1 = $w2 = $NONWORD;

while (<>) {
    foreach (split) {
        push(@{$statetab{$w1}{$w2}}, $_);
        ($w1, $w2) = ($w2, $_);
    }
}

# Aggiunge alla coda
push(@{$statetab{$w1}{$w2}}, $NONWORD);

$w1 = $w2 = $NONWORD;

for (my $i = 0; $i < $MAXGEN; $i++) {
    my $suf = $statetab{$w1}{$w2};
    my $r = int(rand @$suf);
    exit if ((my $t = $suf->[$r]) eq $NONWORD);
    print "$t\n";

    # Catena di markov
    ($w1, $w2) = ($w2, $t);
}

