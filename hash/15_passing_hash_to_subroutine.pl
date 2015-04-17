#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;

my %hash_club_a = (
    juventus    => 'torino',
    sampdoria   => 'genova',
    chelsea     => 'londra',
);

my %hash_club_b = (
    genoa       => 'genova',
    barca       => 'barcellona',
    juventus    => 'torino'
);

my $result = compare_hash(\%hash_club_a, \%hash_club_b);

if ($result != 0) {
    say "hashes are different";
} elsif ($result eq 0) {
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
            } else {
                return -1;
            }
        }
    }
}
