#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

die ("Usage: $0 <CSV file>\n") if (@ARGV != 1);

my @tab;

while (<>) {
    my ($first, $second, $third) = split(/,/, $_);
    push @tab, [$first, $second, $third];
}

foreach my $row (@tab) {
    foreach my $column (@$row) {
        print "$column\n";
    }
}

# csv file is:
# genova, milano, torino, venezia
# roma, napoli, firenze, bologna
# palermo, catania, perugia, lecce
