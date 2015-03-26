#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#A function receives its parameters in a single array @_
sub info {
    my ($name) = @_;
    say "Hello, $name";
}
