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

# csv file is:
