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

# Dereferencing (method 1): an hash reference to get a value
my $favorite_footbal_club = ${$hash_ref}{'name'};
# Dereferencing (method 2): drop the curly braces
my $city = $$hash_ref{'city'};
# Dereferencing (method 3): arrow form
my $country = $hash_ref->{'country'};

print 'My favorite football club is: ', $favorite_footbal_club;
print " from $city ($country)\n";

# On entire hash (keys)
my @keys = keys %{$hash_ref};
foreach (@keys) {
    say 'key: ', $_;
}

# On entire hash (values)
my @values = values %{$hash_ref};
foreach (@values) {
    say 'values: ', $_;
}
