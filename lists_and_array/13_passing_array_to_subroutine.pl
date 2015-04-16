#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;

my @names_a = qw(luca franco giovanni angela pino alberto guido giusy maria);
my @names_b = qw(giusy franco claudia giovanna maurizio guido mario maria);

my @array_test = compare_array(\@names_a, \@names_b);

print Dumper \@array_test;

sub compare_array {
    my ($arr1, $arr2) = @_;
    my @result;

    for (my $x=0; $x < @$arr1; $x++) {
        for (my $y=0; $y < @$arr2; $y++) {
            if ($arr1->[$x] eq $arr2->[$y]) {
                push(@result, $arr1->[$x]);
            }
        }
    }

    return @result;
}
