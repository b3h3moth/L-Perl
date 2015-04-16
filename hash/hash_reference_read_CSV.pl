#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

die ("Usage: $0 <CSV file>\n") if (@ARGV != 1);

my @db;

while (<>) {
    my ($name, $city, $tel_number) = split(/,/, $_);
    push @db, {
        name => $name,
        city => $city,
        tel  => $tel_number
    };
}

foreach my $rec (@db) {
    say "$rec->{name}\tfrom $rec->{city}\ttel: $rec->{tel}";
}

# file.csv:
# luca, New York, 123490,
# gina, Rome, 786756,
# pino, Madrid, 7867,
# maria, Firenze, 6790890
