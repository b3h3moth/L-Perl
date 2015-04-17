#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;

my %hash_club_a = (
    juventus    => 'torino',
    sampdoria   => 'genova',
    genoa       => 'genova',
    chelsea     => 'londra'
);

my %hash_club_b = (
    atletico    => 'madrid',
    arsenal     => 'londra',
    barca       => 'barcellona',
    juventus    => 'torino',
);

my %hash_test = compare_hash(\%hash_club_a, \%hash_club_b);

print Dumper \%hash_test;

# returns equals hash
sub compare_hash {
    my ($rif_a, $rif_b) = @_;
    my %result;

    my $rifa = keys %$rif_a;
    my $rifb = keys %$rif_b;

    say "$rifa:$rifb";

    return %result;
}
