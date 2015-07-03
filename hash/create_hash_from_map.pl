#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;

# With reference
sub set_hash_by_reference {
    my $items = shift;
    my %hash = map {$_, 1} @{$items};
    say Dumper \%hash;
}

my @array = qw(1 2 3 4 5 6 7 8 9 10);
set_hash_by_reference(\@array);

