#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

sub counter {
    state $cont = 1;
    return $cont++;
}

say 'a: '.counter(); #print 1
say 'a: '.counter(); #print 2
say 'a: '.counter(); #print 3

sub counter_b {
    my $cont = 1; #scalar context
    return $cont++;
}

say 'b: '.counter_b(); #print 1
say 'b: '.counter_b(); #print 1
say 'b: '.counter_b(); #print 1

sub counter_c {
    state $cont = shift;
    return $cont++;
}

say 'c: '.counter_c(2);     #print 2
say 'c: '.counter_c(40);    #print 3
say 'c: '.counter_c(600);   #print 4
say 'c: '.counter_c(8800);  #print 5
say 'c: '.counter_c(10000); #print 6
