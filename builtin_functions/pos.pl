#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#pos() function returns the offset of where the last 'm//g' search left off for
#the variable in question; pos() directly accesses the location used by the
#regexp engine to store the offset.

my $song = "could you be loved";
my @chars = split("", $song);

for (my $i=0, my $x=1; $i<scalar(@chars); $i++, $x++) {
    print "$chars[$i] $x";
    say "";
}

while ($song =~ /(\w+)/g) {
    say "$1 offset: ", pos($song);
}
