#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my %juventus = (
    name        => 'Juventus FC',
    foundation  => 1987,
    league      => 'Serie A',
    country     => 'italy',
    city        => 'Torino'
);

my $hash_ref = \%juventus;

# Dereferencing an hash reference to get a value
my $favorite_footbal_club = ${$hash_ref}{'name'};
say 'My favorite football club is: ', $favorite_footbal_club;
