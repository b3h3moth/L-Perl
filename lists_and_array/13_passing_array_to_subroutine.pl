#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @names_a = qw(luca alberto guido giusy);
my @names_b = qw(giusy franco claudia giovanna);

if (compare_array(\@names_a, \@names_b) == 0) {
    say 'compare_array() returns 0, true';
} else {
    say 'compare_array() returns 0, false';
}


sub compare_array {
    my ($arr1, $arr2) = @_;

    for (my $x=0; $x < @$arr1; $x++) {
        for (my $y=0; $y < @$arr2; $y++) {
            #say "$arr1->[$x] = $arr2->[$y]";
            if ($arr1->[$x] eq $arr2->[$y]) {
                return 0;
            } else {
                return -1;
            }
        }
    }
}
