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
say "A: $num";

#more concise
sub summa {
    my ($x, $y) = @_;

    return $x + $y;
}

my $res = summa(17, 28);
say "B: $res";

#really concise
sub sum_total {
    return $_[0] + $_[1];
}

my $result = sum_total(16, 14);
say "C: $result";
