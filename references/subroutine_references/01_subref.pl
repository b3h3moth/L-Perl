#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

sub luca_greets {
    my $who = shift;
    say "Luca: Hi, $who";
}

sub giusy_greets {
    my $who = shift;

    if ($who eq "Luca") {
        say "Giusy: $who?";
    } else {
        say "Giusy: hi $who";
    }
}

# Basic subroutine call
luca_greets('Giusy');
giusy_greets('Luca');

# Take a reference to the subroutine (coderef)
my $ref_to_kver = \&kernel_version;
# Dereference a code reference
&kernel_version('3.2.68-1+deb7u2');

for my $version (\&kernel_version, \&os_name) {
    $version->('reference');
}
