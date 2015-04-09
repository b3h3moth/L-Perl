#!/usr/bin/env perl
use warnings;
use strict;

my @football_club = qw(
    Juventus Milan Inter RealMadrid juventus
    BayernMonaco Juventus RealMadrid Manchester
    Juventus Barcellona Juventus Arsenal Chelsea
    Juventus Milan Inter RealMadrid juventus
    Barcellona Juventus Arsenal Chelsea Juventus
    Juventus Milan Inter RealMadrid Juventus
    BayernMonaco Juventus RealMadrid Juventus Manchester
    Barcellona Juventus Arsenal Chelsea
    BayernMonaco Juventus RealMadrid Manchester
);

my %count;

foreach (@football_club) {
    if (exists $count{$_}) {
         $count{$_}++;
    } else {
         $count{$_} = 1;
    }
}

foreach (keys %count) {
    print "$_   \toccurs $count{$_} time(s)\n";
}
