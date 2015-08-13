#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Carp; #alternative warn and die for modules

package Foo;

sub sum {
    main::croak 'I\'m waiting two numbers, there are: ' . @_
    unless @_ == 2;
    $_[0] + $_[1];
}


package main;

Foo::sum(10,20,30);
