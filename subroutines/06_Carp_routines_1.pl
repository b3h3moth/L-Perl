#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Carp; #alternative warn and die for modules

package Foo;

sub foo {
    main::carp("(carp) called at line ".__LINE__."\n, foo() was called");
    main::croak("(croak) called at line ".__LINE__."\n, foo() was called");
}

package main;

Foo::foo();
