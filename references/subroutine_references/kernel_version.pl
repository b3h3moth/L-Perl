#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

sub kernel_version {
    my $version = shift;
    say "My kernel version is: $version";
}

sub os_name {
    my $name = shift;
    say "My os is: $name";
}

# Basic subroutine call
kernel_version('3.2.0-4-powerpc');

# Take a reference to the subroutine (coderef)
my $ref_to_kver = \&kernel_version;
# Dereference a code reference
&kernel_version('3.2.68-1+deb7u2');

for my $version (\&kernel_version, \&os_name) {
    $version->('reference');
}
