#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

sub counter {
    state $cont = 1;
    return $cont++;
}

say 'a: '.counter();
say 'a: '.counter();
say 'a: '.counter();

sub counter_b {
    my $cont = 1;
    return $cont++;
}

say 'b: '.counter_b();
say 'b: '.counter_b();
say 'b: '.counter_b();

sub counter_c {
    state $cont = shift;
    return $cont++;
}

say 'c: '.counter_c(2);
say 'c: '.counter_c(4);
say 'c: '.counter_c(6);
say 'c: '.counter_c(8);
say 'c: '.counter_c(10);
