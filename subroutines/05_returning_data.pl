#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#sometimes is usually to return data from subroutines, it can be done with
#keyword 'return'

sub sum{
    my ($x, $y) = @_;
    my $sum = $x + $y;

    return $sum;
}

my $num = sum(10, 15);
say "$num";

#more concise
sub summa {
    my ($x, $y) = @_;

    return $x + $y;
}

my $res = summa(19, 28);
say "$res";
