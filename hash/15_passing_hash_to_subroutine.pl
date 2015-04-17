#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;

my %hash_club_a = (
    juventus    => 'torino',
    milan       => 'milano',
    inter       => 'milano',
    sampdoria   => 'genova',
    genoa       => 'genova',
    arsenal     => 'londra',
    chelsea     => 'londra'
);

my %hash_club_b = (
    atletico    => 'madrid',
    barca       => 'barcellona',
    lazio       => 'roma',
    roma        => 'roma',
    campobasso  => 'campobasso',
    juventus    => 'torino',
    dinamo      => 'kiev'
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
    exit;
    for (my $x=0; $x < @$rif_a; $x++) {
        for (my $y=0; $y < @$rif_b; $y++) {
            # useful for debugging purpose, compare each array element
            # say "$rif_a->[$x] = $rif_b->[$y]";
            if ($rif_a->[$x] eq $rif_b->[$y]) {
                push(@result, $rif_a->[$x]);
            }
        }
    }

    return %result;
}
