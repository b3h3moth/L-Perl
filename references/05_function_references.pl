#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

sub which_unix {
    say 'I\'m on OpenBSD 5.7, real UNIX OS';
}

#reference operator '\' e function sigil '&'
my $ref = \&which_unix;

$ref->();

#&$rif; this works :)

#anonymous functions
#si usa la keyword 'sub' senza un nome
my $new_ref = sub { say 'Information wants to be free'};

$new_ref->();
