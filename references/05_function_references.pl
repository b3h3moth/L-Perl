#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

sub operating_system {
    say 'I\'m on OpenBSD 5.7, real UNIX OS';
}

#reference operator '\' piu' function sigil '&'
my $ref = \&operating_system;

$ref->();

#&$rif; works but it is not good!
