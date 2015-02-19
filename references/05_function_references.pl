#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

sub which_unix {
    say 'I\'m on OpenBSD 5.7, real UNIX OS';
}

#reference operator '\' e function sigil '&'
my $rif = \&which_unix;

$rif->();

#&$rif; this works :)
