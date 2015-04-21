#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Perl stops parsing the script once it sees the __END__ token.
my %club = (
    juventus     => 'serie A',
    arsenal      => 'premier',
    barcellona   => 'liga',
    psg          => 'league 1',
    bayernMonaco => 'bundesliga',
);

while (my ($name, $serie) = each %club) {
    say "$name plays to $serie";
}
__END__
a
lot
of
comments
