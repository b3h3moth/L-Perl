#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;

# How to create an hash from an array
my @skills = qw(Perl C C++ InfoSec Unix SysAdmin);
my %liuc = map { $_, 1 } @skills;

print Dumper \%liuc;

# The same thing, but with reference
my @array = qw(1 2 3 4 5 6 7 8 9 10);

sub set_hash_by_reference {
    my $items = shift;
    my %hash = map {$_, 1} @{$items};
    say Dumper \%hash;
}

set_hash_by_reference(\@array);
