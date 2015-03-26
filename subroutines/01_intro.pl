#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#declaring
sub printKernelVersion;

#subroutine statement:
#sub name { ... }
sub printKernelVersion {
    say "my first Perl subroutine";
}

#first call
printKernelVersion;
#second call
printKernelVersion();
