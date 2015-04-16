#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @names = qw(luca alberto guido giusy);
my @country = qw(italy france greece spain hollan);

sub compare_array {
    my (@arr1, @arr2) = @_;

    foreach my $elem1 (@arr1) {
        foreach my $elem2 (@arr2) {
            if ($elem1 eq $elem2) {
                say 'uguali';
            }
        }
    }
}
compare_array(\@names, \@country);
