#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

sub operating_system {
    say 'OpenBSD is my OS';
}

#reference operator and function sigil '\&'
my $ref = \&operating_system;

$ref->();
#&$rif works but it is not good!
