#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#subroutine called printKernelVersion
sub printKernelVersion {
    my $ker_ver = qx(uname -v);
    return $ker_ver;
}

say 'My kernel version is: '.printKernelVersion;
