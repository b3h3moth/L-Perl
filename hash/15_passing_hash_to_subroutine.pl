#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;

my %hash_club_a = (
    juventus    => 'torino',
    sampdoria   => 'genova',
    chelsea     => 'londra',
    atletico    => 'madrid',
    arsenal     => 'londra'
);

my %hash_club_b = (
    atletico    => 'madrid',
    arsenal     => 'londra',
    genoa       => 'genova',
    barca       => 'barcellona',
    juventus    => 'torino'
);

my %hash_test = compare_hash(\%hash_club_a, \%hash_club_b);

print Dumper \%hash_test;

# returns equals hash
sub compare_hash {
    my ($rif_a, $rif_b) = @_;
    my %result;

    #while (my ($club_a, $country_a) = sort each $rif_a) {
    #    while (my ($club_b, $country_b) = sort each $rif_b) {
    #        if ($club_a eq $club_b) {
    #            %result = ( $club_a => $country_a);
    #        }
    #    }
    #}

    return %result;
}
