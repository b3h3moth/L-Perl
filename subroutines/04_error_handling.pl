#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#caller() returns the context of the current subroutine call.

#Without arguments, in list context, returns:
# ($package, $filename, $line) = caller
#  0         1          2
package metaverso;

metaverso();

sub metaverso {
    print_info_call();
}

sub print_info_call {
    my ($package, $filename, $line) = caller();
    say "Called from \'$package\' in \'$filename\' at \'$line\' line";
}
