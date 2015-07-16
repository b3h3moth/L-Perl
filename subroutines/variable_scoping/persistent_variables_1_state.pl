#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# state EXPR
# It declares a lexically scoped variable, just like "my" does. However, those
# variables will never be reinitialized, contrary to lexical variables that are
# reinitialized each time their enclosing block is entered.

sub counter {
    # $cont is a lexical variable that persists
    # from one subroutine call to the next
    state $cont = 1;
    return $cont++;
}

say 'a: '.counter(); # print 1
say 'a: '.counter(); # print 2
say 'a: '.counter(); # print 3

sub counter_b {
    my $cont = 1; # private variable 
    return $cont++;
}

say 'b: '.counter_b(); # print 1
say 'b: '.counter_b(); # print 1
say 'b: '.counter_b(); # print 1

sub counter_c {
    state $cont = shift;
    return $cont++;
}

say 'c: '.counter_c(2);     # print 2
say 'c: '.counter_c(40);    # print 3
say 'c: '.counter_c(600);   # print 4
say 'c: '.counter_c(8800);  # print 5
say 'c: '.counter_c(10000); # print 6
