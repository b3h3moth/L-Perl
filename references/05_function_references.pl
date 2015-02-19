#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

sub which_unix {
    say 'I\'m on OpenBSD Unix system 5.7';
}

#reference operator '\' e function sigil '&'
my $rif = \&which_unix;

