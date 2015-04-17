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

if (compare_hash(\%hash_club_a, \%hash_club_b) != 0) {
    say "hashes are different";
} else {
    say "Equals";
}


# returns equals hash
sub compare_hash {
    my ($rif_a, $rif_b) = @_;
    my %result;

    while (my ($club_a, $country_a) = each $rif_a) {
        while (my ($club_b, $country_b) = each $rif_b) {
            if ($club_a eq $club_b) {
                return 0;
            }
        }
    }
}
