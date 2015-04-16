#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @names = qw(luca alberto guido giusy);
my @country = qw(italy france greece spain hollan);

compare_array(\@names, \@country);

sub compare_array {
    my ($arr1, $arr2) = @_;

    for (my $x=0; $x < @$arr1; $x++) {
        for (my $y=0; $y < @$arr2; $y++) {
            say "$arr1->[$x] = $arr2->[$y]";
        }
    }
}
