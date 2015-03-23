#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#subroutine
#sub is a key word to indicate subroutine
#thene there's a name
sub printout {
    say "my first Perl subroutine";
}

#first call
printout;
#second call
printout();
