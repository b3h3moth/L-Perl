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

sub compare_hash {
    my ($arr1, $arr2) = @_;
    my %result;

    for (my $x=0; $x < @$arr1; $x++) {
        for (my $y=0; $y < @$arr2; $y++) {
            # useful for debugging purpose, compare each array element
            # say "$arr1->[$x] = $arr2->[$y]";
            if ($arr1->[$x] eq $arr2->[$y]) {
                push(@result, $arr1->[$x]);
            }
        }
    }

    return %result;
}
