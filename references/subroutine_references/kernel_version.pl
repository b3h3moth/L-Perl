#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

sub kernel_version {
    my $version = shift;
    say "My kernel version is: $version";
}

kernel_version('3.2.0-4-powerpc');
